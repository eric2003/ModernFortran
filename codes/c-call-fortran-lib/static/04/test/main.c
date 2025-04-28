extern void __mod1_MOD_show_n1();
extern void __mod2_MOD_show_n2();
extern void __mod3_MOD_show_n3();
extern void sub1_();
extern void sub2_();

int main(int argc, char *argv[])
{
    __mod1_MOD_show_n1();
    __mod2_MOD_show_n2();
    __mod3_MOD_show_n3();
    sub1_();
    sub2_();

    return 0;
}
