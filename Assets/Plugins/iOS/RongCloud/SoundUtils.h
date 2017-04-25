#import <AVFoundation/AVFoundation.h>

static AVAudioPlayer*  g_Audioplayer=nil;

#if defined(__cplusplus)
extern "C"
{
    int play(char* uri,float volume = 1)
    {
        if(uri==nil)
        {
            NSLog(@"SoundUtils.Play: uri is nil");
            return -1;
        }
        
        NSLog(@"SoundUtils.Play: uri is: %s",uri);
        
        NSString * path= [NSString stringWithFormat:@"%s",uri];
        
        NSURL *url=[NSURL fileURLWithPath:path];
        if(url==nil)
        {
            NSLog(@"SoundUtils.Play: url is nil.");
            return -2;
        }
        else
        {
            NSString* tempath =  [url path];
            NSLog(@"SoundUtils.Play: url is:%@",tempath);
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
                NSLog(@"SoundUtils.Play: success.");
                return 0;
            }
            else
            {
                NSLog(@"SoundUtils.Play: fail.");
            }
        }
        else
        {
            NSLog(@"SoundUtils.Play: AVAudioPlayer instance is nil.");
        }
        return -1;
    }
}
#endif