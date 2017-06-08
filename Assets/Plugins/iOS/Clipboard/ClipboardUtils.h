@interface ClipboardUtils : NSObject
extern "C"
{
    /*  compare the namelist with system processes  */
    void iOSCopy(const char *textList);
}
@end


@implementation ClipboardUtils
//将文本复制到IOS剪贴板
- (void)oc_copyTextToClipboard : (NSString*)text
{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = text;
}
@end
extern "C" {
    static ClipboardUtils *pUtils;
    void iOSCopy(const char *textList)
    {   
        NSString *text = [NSString stringWithUTF8String: textList] ;
        if(pUtils == NULL)
        {
            pUtils = [[ClipboardUtils alloc] init];
        }
        [pUtils oc_copyTextToClipboard: text];
    }
}