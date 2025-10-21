/*
// This override the OpenSSL function
int X509_NAME_add_entry_by_txt(X509_NAME *name, const char *field, int type,
                               const unsigned char *bytes, int len, int loc,
                               int set)
{
    g_assert_nonnull(name);
    g_assert_nonnull(field);
    g_assert_cmpint(type, ==, MBSTRING_UTF8);
    g_assert_nonnull(bytes);
    g_assert_cmpint(len, ==, -1);
    g_assert_cmpint(loc, ==, -1);
    g_assert_cmpint(set, ==, 0);
    g_assert_cmpstr(field, ==, get_next_result());
    g_assert_cmpstr((const char *)bytes, ==, get_next_result());
    return 1;
}
*/