#import <AVFoundation/AVFoundation.h>

static AVAudioPlayer*  g_Audioplayer=nil;

#if defined(__cplusplus)
extern "C"
{
    void PlayVoice(char* uri,float volume = 1)
    {
        if(uri==nil)
        {
            NSLog(@"PlayVoice: uri is nil");
            return;
        }
        
        NSLog(@"PlayVoice: uri is: %s",uri);
        
        NSString * path= [NSString stringWithFormat:@"%s",uri];
        
        NSURL *url=[NSURL fileURLWithPath:path];
        if(url==nil)
        {
            NSLog(@"PlayVoice: url is nil.");
            return;
        }
        else
        {
            NSString* tempath =  [url path];
            NSLog(@"PlayVoice: url is:%@",tempath);
        }
        
        
        if(g_Audioplayer==nil)
        {
            g_Audioplayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
        }
        else
        {
            [g_Audioplayer stop];
            g_Audioplayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
        }
        
        
        if(g_Audioplayer!=nil)
        {
            if([g_Audioplayer isPlaying])
            {
                [g_Audioplayer stop];
            }
            
            [g_Audioplayer prepareToPlay];
            g_Audioplayer.volume = volume;
            
            
            BOOL b = [g_Audioplayer play];
            if(b)
            {
                NSLog(@"PlayVoice: success.");
                return;
            }
            else
            {
                NSLog(@"PlayVoice: fail.");
            }
        }
        else
        {
            NSLog(@"PlayVoice: AVAudioPlayer instance is nil.");
        }
        return;
    }
}
#endif