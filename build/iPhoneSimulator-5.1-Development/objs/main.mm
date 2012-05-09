#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_96E281B0D9044FB3871AADA83756A050(void *, void *);
void MREP_C378BF9F90C74F1CB6323E4DA24E1576(void *, void *);
void MREP_57D361DB3DED483F87964AF025940DB6(void *, void *);
void MREP_13B26224BBE4443E97EF90A7F0524540(void *, void *);
void MREP_D31C43A69B0148C6A8490417D94461B8(void *, void *);
void MREP_9570FFA4948349EB9D6C0067B1EB2CBA(void *, void *);
void MREP_329DB6D172C24A4190BFE523E1BAC3DA(void *, void *);
void MREP_8099F80A34CB472C9BB868AFEEE4791B(void *, void *);
void MREP_CF43D1ECF7C146DC8E9168FC0E0DACFE(void *, void *);
void MREP_387294EC57144ADFAF84FF9723862D26(void *, void *);
void MREP_B6AB5D3170C141FF92BB94156AE8A081(void *, void *);
}
int
main(int argc, char **argv)
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    const char *progname = argv[0];
    ruby_init();
    ruby_init_loadpath();
    ruby_script(progname);
    int retval = 0;
    try {
        void *self = rb_vm_top_self();
MREP_96E281B0D9044FB3871AADA83756A050(self, 0);
MREP_C378BF9F90C74F1CB6323E4DA24E1576(self, 0);
MREP_57D361DB3DED483F87964AF025940DB6(self, 0);
MREP_13B26224BBE4443E97EF90A7F0524540(self, 0);
MREP_D31C43A69B0148C6A8490417D94461B8(self, 0);
MREP_9570FFA4948349EB9D6C0067B1EB2CBA(self, 0);
MREP_329DB6D172C24A4190BFE523E1BAC3DA(self, 0);
MREP_8099F80A34CB472C9BB868AFEEE4791B(self, 0);
MREP_CF43D1ECF7C146DC8E9168FC0E0DACFE(self, 0);
MREP_387294EC57144ADFAF84FF9723862D26(self, 0);
MREP_B6AB5D3170C141FF92BB94156AE8A081(self, 0);
        retval = UIApplicationMain(argc, argv, nil, @"AppDelegate");
        rb_exit(retval);
    }
    catch (...) {
	rb_rb2oc_exc_handler();
    }
    [pool release];
    return retval;
}
