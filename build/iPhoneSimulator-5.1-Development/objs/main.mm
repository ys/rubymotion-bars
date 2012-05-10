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
void MREP_E64E5C896CD346AC9248630921C34CFF(void *, void *);
void MREP_29BD2F50D4824329ABE7305CC2602146(void *, void *);
void MREP_5D93A4C08764408CA15594BACE5200B8(void *, void *);
void MREP_DA75BE25B6FD472BAD890B3890276CCF(void *, void *);
void MREP_866D9BBAB5104750AFC69BC84FD6065E(void *, void *);
void MREP_1CEACB02A05F44E4B22D14CF7BFC57FD(void *, void *);
void MREP_9E5F2B6B44454C1F97D0A6BF44A8E297(void *, void *);
void MREP_1E6915876E284016903AC002F523768B(void *, void *);
void MREP_FB29C329DD13496FAEB387517CD29525(void *, void *);
void MREP_55B7FE91A11F4AB6832710E5C0BB7DE4(void *, void *);
void MREP_804D32C2C74547B2B153594CD1ECA404(void *, void *);
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
MREP_E64E5C896CD346AC9248630921C34CFF(self, 0);
MREP_29BD2F50D4824329ABE7305CC2602146(self, 0);
MREP_5D93A4C08764408CA15594BACE5200B8(self, 0);
MREP_DA75BE25B6FD472BAD890B3890276CCF(self, 0);
MREP_866D9BBAB5104750AFC69BC84FD6065E(self, 0);
MREP_1CEACB02A05F44E4B22D14CF7BFC57FD(self, 0);
MREP_9E5F2B6B44454C1F97D0A6BF44A8E297(self, 0);
MREP_1E6915876E284016903AC002F523768B(self, 0);
MREP_FB29C329DD13496FAEB387517CD29525(self, 0);
MREP_55B7FE91A11F4AB6832710E5C0BB7DE4(self, 0);
MREP_804D32C2C74547B2B153594CD1ECA404(self, 0);
        retval = UIApplicationMain(argc, argv, nil, @"AppDelegate");
        rb_exit(retval);
    }
    catch (...) {
	rb_rb2oc_exc_handler();
    }
    [pool release];
    return retval;
}
