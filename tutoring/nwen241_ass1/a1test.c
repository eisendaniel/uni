#include <stdlib.h>
#include <time.h>

#include "base_editor.h"
#include "editor.h"
#include "minunit.h"

#define NUM_TASKS 4
#define TASKS_MIN 4
#define TASKS_MAX 7

#define EDITING_BUFLEN_SHORT 21
#define EDITING_BUFLEN_LONG 48
#define VIEWING_ROWS 8
#define VIEWING_COLS 11

char editing_buffer[EDITING_BUFLEN_SHORT] = "abcdefghijklmnopqrst\0";
char base_editing_buffer[EDITING_BUFLEN_SHORT] = "abcdefghijklmnopqrst\0";

char editing_buffer_long[EDITING_BUFLEN_LONG] =
    "abcdefghijklmnopqrstuvwxyz01234567890abcdefghij\0";
char base_editing_buffer_long[EDITING_BUFLEN_LONG] =
    "abcdefghijklmnopqrstuvwxyz01234567890abcdefghij\0";

char base_viewing_buffer[VIEWING_ROWS][VIEWING_COLS];
char viewing_buffer[VIEWING_ROWS][VIEWING_COLS];

void test_setup(void) /* Nothing */
{}

void test_teardown(void) /* Nothing */
{}

void reset_buffers()
{
    strncpy(editing_buffer, "abcdefghijklmnopqrst\0", EDITING_BUFLEN_SHORT);
    strncpy(base_editing_buffer, "abcdefghijklmnopqrst\0",
            EDITING_BUFLEN_SHORT);

    return;
}

MU_TEST(test_sanity) {
    printf("Ensuring both reference buffers are equal\n");
    mu_assert_string_eq(base_editing_buffer, editing_buffer);
}

#ifndef DISABLE_TASK4
/**
 * pos is less than 0
 */
MU_TEST(test_task4_pos_lt0) {

    char insert = (rand() % 26) + 65;
    int pos = -1;

    printf("Testing insert of char %c at invalid position %d\n", insert, pos);

    int r_base = base_editor_insert_char(base_editing_buffer,
                                         EDITING_BUFLEN_SHORT, insert, pos);
    int r_test =
        editor_insert_char(editing_buffer, EDITING_BUFLEN_SHORT, insert, pos);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * pos is greater than buffer length
 */
MU_TEST(test_task4_pos_gtl) {

    char insert = (rand() % 26) + 65;
    int pos = EDITING_BUFLEN_SHORT + 2;

    printf("Testing insert of char %c at invalid position %d\n", insert, pos);

    int r_base = base_editor_insert_char(base_editing_buffer,
                                         EDITING_BUFLEN_SHORT, insert, pos);
    int r_test =
        editor_insert_char(editing_buffer, EDITING_BUFLEN_SHORT, insert, pos);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * pos is at end of buffer
 */
MU_TEST(test_task4_pos_eob) {

    char insert = (rand() % 26) + 65;
    int pos = EDITING_BUFLEN_SHORT - 1;

    printf("Testing insert of char %c at invalid position %d\n", insert, pos);

    int r_base = base_editor_insert_char(base_editing_buffer,
                                         EDITING_BUFLEN_SHORT, insert, pos);
    int r_test =
        editor_insert_char(editing_buffer, EDITING_BUFLEN_SHORT, insert, pos);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * Normal insertion
 */
MU_TEST(test_task4_normal) {

    char insert = (rand() % 26) + 65;
    int pos = rand() % EDITING_BUFLEN_SHORT;

    printf("Testing insert of char %c at position %d\n", insert, pos);

    int r_base = base_editor_insert_char(base_editing_buffer,
                                         EDITING_BUFLEN_SHORT, insert, pos);
    int r_test =
        editor_insert_char(editing_buffer, EDITING_BUFLEN_SHORT, insert, pos);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}
#endif

#ifndef DISABLE_TASK5
/**
 * offset is less than 0
 */
MU_TEST(test_task5_offset_lt0) {

    char delete = (rand() % 26) + 97;
    int offset = -1;

    printf("Testing deletion of char %c from invalid offset %d\n", delete,
           offset);

    int r_base = base_editor_delete_char(base_editing_buffer,
                                         EDITING_BUFLEN_SHORT, delete, offset);
    int r_test =
        editor_delete_char(editing_buffer, EDITING_BUFLEN_SHORT, delete,
                           offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * offset is greater than buffer length
 */
MU_TEST(test_task5_offset_gtl) {

    char delete = (rand() % 26) + 97;
    int offset = EDITING_BUFLEN_SHORT + 2;

    printf("Testing deletion of char %c from invalid offset %d\n", delete,
           offset);

    int r_base = base_editor_delete_char(base_editing_buffer,
                                         EDITING_BUFLEN_SHORT, delete, offset);
    int r_test =
        editor_delete_char(editing_buffer, EDITING_BUFLEN_SHORT, delete,
                           offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * Normal deletion
 */
MU_TEST(test_task5_normal) {

    char delete = (rand() % 26) + 97;
    int offset = rand() % EDITING_BUFLEN_SHORT;

    printf("Testing deletion of char %c from offset %d\n", delete, offset);

    int r_base = base_editor_delete_char(base_editing_buffer,
                                         EDITING_BUFLEN_SHORT, delete, offset);
    int r_test =
        editor_delete_char(editing_buffer, EDITING_BUFLEN_SHORT, delete,
                           offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}
#endif

#ifndef DISABLE_TASK6
/**
 * offset is less than 0
 */
MU_TEST(test_task6_offset_lt0) {

    char str[EDITING_BUFLEN_SHORT] = "abc";
    char replacement[EDITING_BUFLEN_SHORT] = "ABC";

    int offset = -1;

    printf("Testing replacement of target \"%s\" with \"%s\" from invalid offset "
           "%d\n",
           str, replacement,
           offset);

    int r_base = base_editor_replace_str(
        base_editing_buffer, EDITING_BUFLEN_SHORT, str, replacement, offset);
    int r_test = editor_replace_str(editing_buffer, EDITING_BUFLEN_SHORT, str,
                                    replacement, offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * offset is greater than buffer length
 */
MU_TEST(test_task6_offset_gtl) {

    char str[EDITING_BUFLEN_SHORT] = "abc";
    char replacement[EDITING_BUFLEN_SHORT] = "ABC";

    int offset = EDITING_BUFLEN_SHORT + 2;

    printf("Testing replacement of target \"%s\" with \"%s\" from invalid offset "
           "%d\n",
           str, replacement,
           offset);

    int r_base = base_editor_replace_str(
        base_editing_buffer, EDITING_BUFLEN_SHORT, str, replacement, offset);
    int r_test = editor_replace_str(editing_buffer, EDITING_BUFLEN_SHORT, str,
                                    replacement, offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * str is empty
 */
MU_TEST(test_task6_empty_str) {

    char str[1] = { '\0' };
    char replacement[EDITING_BUFLEN_SHORT] = "ABC";

    int offset = 0;

    printf("Testing replacement of empty (invalid) string \"%s\" with \"%s\" "
           "from offset %d\n",
           str, replacement, offset);

    int r_base = base_editor_replace_str(
        base_editing_buffer, EDITING_BUFLEN_SHORT, str, replacement, offset);
    int r_test = editor_replace_str(editing_buffer, EDITING_BUFLEN_SHORT, str,
                                    replacement, offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * replacement is empty
 */
MU_TEST(test_task6_empty_replacement) {

    char str[EDITING_BUFLEN_SHORT] = "abc";
    char replacement[1] = { '\0' };

    int offset = 0;

    printf("Testing replacement of target \"%s\" with empty replacement "
           "\"%s\" from offset %d\n",
           str, replacement, offset);

    int r_base = base_editor_replace_str(
        base_editing_buffer, EDITING_BUFLEN_SHORT, str, replacement, offset);
    int r_test = editor_replace_str(editing_buffer, EDITING_BUFLEN_SHORT, str,
                                    replacement, offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}

/**
 * Normal replacement
 */
MU_TEST(test_task6_normal) {

    char str[EDITING_BUFLEN_SHORT];
    char replacement[EDITING_BUFLEN_SHORT];

    int str_offset = rand() % (EDITING_BUFLEN_SHORT - 2) + 1;
    int str_len = EDITING_BUFLEN_SHORT - str_offset;

    int replacement_len = rand() % (EDITING_BUFLEN_SHORT - 2) + 1;

    int offset = rand() % EDITING_BUFLEN_SHORT;

    // Randomly determine whether target string is actually from
    // editing_buffer or randomly generated
    if (rand() % 2) {
        strncpy(str, base_editing_buffer + str_offset, str_len);
        str[str_len] = '\0';
    }
    else {
        for (int i = 0; i < str_len; i++) {
            str[i] = (rand() % 26) + 97;
        }
        str[str_len] = '\0';
    }

    for (int i = 0; i < replacement_len; i++) {
        replacement[i] = (rand() % 26) + 65;
    }
    replacement[replacement_len] = '\0';

    printf("Testing replacement of target \"%s\" with \"%s\" from offset %d\n",
           str, replacement, offset);

    int r_base = base_editor_replace_str(
        base_editing_buffer, EDITING_BUFLEN_SHORT, str, replacement, offset);
    int r_test = editor_replace_str(editing_buffer, EDITING_BUFLEN_SHORT, str,
                                    replacement, offset);

    mu_assert_string_eq(base_editing_buffer, editing_buffer);
    mu_assert_int_eq(r_base, r_test);

    reset_buffers();
}
#endif

#ifndef DISABLE_TASK7
/**
 * editor_view with wrap
 */
MU_TEST(test_task7_wrap) {

    printf("Testing editor view with wrap\n");

    base_editor_view(VIEWING_ROWS, VIEWING_COLS, base_viewing_buffer,
                     base_editing_buffer_long, EDITING_BUFLEN_LONG, 1);
    editor_view(VIEWING_ROWS, VIEWING_COLS, viewing_buffer, editing_buffer_long,
                EDITING_BUFLEN_LONG, 1);

    mu_assert_string_eq(base_editing_buffer_long, editing_buffer_long);
    for (int i = 0; i < VIEWING_ROWS; i++) {
        mu_assert_string_eq(base_viewing_buffer[i], viewing_buffer[i]);
    }
}

/**
 * editor_view without wrap
 */
MU_TEST(test_task7_nowrap) {

    printf("Testing editor view without wrap\n");

    base_editor_view(VIEWING_ROWS, VIEWING_COLS, base_viewing_buffer,
                     base_editing_buffer_long, EDITING_BUFLEN_LONG, 0);
    editor_view(VIEWING_ROWS, VIEWING_COLS, viewing_buffer, editing_buffer_long,
                EDITING_BUFLEN_LONG, 0);

    mu_assert_string_eq(base_editing_buffer_long, editing_buffer_long);
    for (int i = 0; i < VIEWING_ROWS; i++) {
        mu_assert_string_eq(base_viewing_buffer[i], viewing_buffer[i]);
    }
}
#endif

MU_TEST_SUITE(test_suite) {
    MU_SUITE_CONFIGURE(&test_setup, &test_teardown);

    MU_RUN_TEST(test_sanity);
    printf("\n");

#ifndef DISABLE_TASK4

    printf("=== Testing Task 4 ===\n\n");

    MU_RUN_TEST(test_task4_pos_lt0);
    printf("\n");

    MU_RUN_TEST(test_task4_pos_gtl);
    printf("\n");

    MU_RUN_TEST(test_task4_pos_eob);
    printf("\n");

    for (int i = 0; i < 10; i++) {
        MU_RUN_TEST(test_task4_normal);
    }
    printf("\n");
#endif

#ifndef DISABLE_TASK5

    printf("=== Testing Task 5 ===\n\n");

    MU_RUN_TEST(test_task5_offset_lt0);
    printf("\n");

    MU_RUN_TEST(test_task5_offset_gtl);
    printf("\n");

    for (int i = 0; i < 10; i++) {
        MU_RUN_TEST(test_task5_normal);
    }
    printf("\n");
#endif

#ifndef DISABLE_TASK6

    printf("=== Testing Task 6 ===\n\n");

    MU_RUN_TEST(test_task6_offset_lt0);
    printf("\n");

    MU_RUN_TEST(test_task6_offset_gtl);
    printf("\n");

    MU_RUN_TEST(test_task6_empty_str);
    printf("\n");

    MU_RUN_TEST(test_task6_empty_replacement);
    printf("\n");

    for (int i = 0; i < 10; i++) {
        MU_RUN_TEST(test_task6_normal);
    }
    printf("\n");
#endif

#ifndef DISABLE_TASK7

    printf("=== Testing Task 7 ===\n\n");

    printf("\nEditing buffer for task 7: %s\n\n", base_editing_buffer_long);

    MU_RUN_TEST(test_task7_wrap);
    printf("\n");

    MU_RUN_TEST(test_task7_nowrap);
    printf("\n");
#endif
}

int main(int argc, char *argv[])
{

    srand(time(NULL));

    printf("\nTesting with editing buffer: %s\n\n", base_editing_buffer);

    printf("=== RUNNING TESTS ===\n\n");

    MU_RUN_SUITE(test_suite);
    MU_REPORT();

    return 0;
}
