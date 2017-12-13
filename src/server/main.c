#include <stdio.h>
#include "parson.h"

int main()
{
    JSON_Object *root_object;
    JSON_Value *val;
    char *serialized;

    printf("Hello world i'm the server!\n");
    printf("Little parsing test...\n\n");

    val = json_parse_file("../../test.txt");

    root_object = json_value_get_object(val);
    //serialized = json_serialize_to_string_pretty(val);
    printf("Test : %s\n", json_object_get_string(root_object, "test"));
    (void)serialized;
    (void)root_object;
    //json_free_serialized_string(serialized);
    //json_value_free(val);

  return(0);
}
