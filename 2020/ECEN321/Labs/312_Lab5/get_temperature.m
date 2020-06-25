% AUTO GENERATED FROM IMPORT DATAMATLAB

function [years, average_temps, base_temp] = get_temperature(filename)

    start = 69;

    formatSpec = '%6s%7s%10s%6s%11s%6s%11s%6s%11s%6s%11s%s%[^\n\r]';

    fileID = fopen(filename,'r');

    dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'TextType', 'string', 'HeaderLines' ,start-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

    fclose(fileID);

    % Replace non-numeric text with NaN.
    raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
    for col=1:length(dataArray)-1
        raw(1:length(dataArray{col}),col) = mat2cell(dataArray{col}, ones(length(dataArray{col}), 1));
    end
    numericData = NaN(size(dataArray{1},1),size(dataArray,2));

    for col=[1,2,3,4,5,6,7,8,9,10]
        % Converts text in the input cell array to numbers. Replaced non-numeric
        % text with NaN.
        rawData = dataArray{col};
        for row=1:size(rawData, 1)
            % Create a regular expression to detect and remove non-numeric prefixes and
            % suffixes.
            regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\,]*)+[\.]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\,]*)*[\.]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
            try
                result = regexp(rawData(row), regexstr, 'names');
                numbers = result.numbers;

                % Detected commas in non-thousand locations.
                invalidThousandsSeparator = false;
                if numbers.contains(',')
                    thousandsRegExp = '^[-/+]*\d+?(\,\d{3})*\.{0,1}\d*$';
                    if isempty(regexp(numbers, thousandsRegExp, 'once'))
                        numbers = NaN;
                        invalidThousandsSeparator = true;
                    end
                end
                % Convert numeric text to numbers.
                if ~invalidThousandsSeparator
                    numbers = textscan(char(strrep(numbers, ',', '')), '%f');
                    numericData(row, col) = numbers{1};
                    raw{row, col} = numbers{1};
                end
            catch
                raw{row, col} = rawData{row};
            end
        end
    end

    rawNumericColumns = raw(:, [1,2,3,4,5,6,7,8,9,10]);
    rawStringColumns = string(raw(:, [11,12]));

    R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),rawNumericColumns); % Find non-numeric cells
    rawNumericColumns(R) = {NaN}; % Replace non-numeric cells

    for catIdx = [1,2]
        idx = (rawStringColumns(:, catIdx) == "<undefined>");
        rawStringColumns(idx, catIdx) = "";
    end

    year = cell2mat(rawNumericColumns(:, 1))';
    % month = cell2mat(rawNumericColumns(:, 2))';

    % monthly_anom = cell2mat(rawNumericColumns(:, 3)');
    % monthly_unc = cell2mat(rawNumericColumns(:, 4))';

    annual_anom = cell2mat(rawNumericColumns(:, 5))';
    annual_unc = cell2mat(rawNumericColumns(:, 6))';

    % five_year_anom = cell2mat(rawNumericColumns(:, 7)');
    % five_year_unc = cell2mat(rawNumericColumns(:, 8))';
    % ten_year_anom = cell2mat(rawNumericColumns(:, 9))';
    % ten_year_unc = cell2mat(rawNumericColumns(:, 10))';
    % twenty_year_anom = categorical(rawStringColumns(:, 1))';
    % twenty_year_unc = categorical(rawStringColumns(:, 2))';

    opts = delimitedTextImportOptions("NumVariables", 15);

    % Specify range and delimiter
    opts.DataLines = [48, 48];
    opts.Delimiter = " ";

    % Specify column names and types
    opts.VariableNames = ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "base_temp", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15"];
    opts.SelectedVariableNames = "base_temp";
    opts.VariableTypes = ["string", "string", "string", "string", "string", "string", "string", "string", "double", "string", "string", "string", "string", "string", "string"];

    % Specify file level properties
    opts.ExtraColumnsRule = "ignore";
    opts.EmptyLineRule = "read";
    opts.ConsecutiveDelimitersRule = "join";
    opts.LeadingDelimitersRule = "ignore";

    % Specify variable properties
    opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15"], "WhitespaceRule", "preserve");
    opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15"], "EmptyFieldRule", "auto");

    % Import the data
    tbl = readtable(filename, opts);

    base_temp = tbl.base_temp;
    clear opts tbl

    years = year(6:12:end)';
    average_temps = (annual_anom(6:12:end) + base_temp)';
end