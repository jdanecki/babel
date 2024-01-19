#import <Foundation/Foundation.h>

@interface Samochod : NSObject {
	@private
		NSString *skrytka;
	@public
		int instance_var;
	@protected 
		NSString *marka;
		NSInteger rok;
}

@property (nonatomic, copy) NSString *marka;
@property (nonatomic, assign) NSInteger rok;

//- instance method
//+ class method
- (void)printDetails;
@end

@implementation Samochod
	NSString *marka;
	NSInteger rok;
	int instance_var;

@synthesize marka;
@synthesize rok;

- (NSString *)getMarka {
    return marka; 
}

- (void)setMarka:(NSString *)newName {
    marka = [newName copy]; 
}


- (void)setSkrytka:(NSString *)newName {
    skrytka = [newName copy]; 
}

- (void)printDetails {
    NSLog(@"marka: %@, rok: %ld instance_var=%d skrytka=%@", 
			marka, rok, instance_var, skrytka);
}

@end

int main(int argc, const char * argv[]) {
#if defined (__clang__)
	@autoreleasepool {
#else
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
#endif
        
		Samochod *samochod = [[Samochod alloc] init];
        samochod->instance_var=10;
		samochod.marka = @"volvo v49";
        samochod.rok = 2010;
        [samochod printDetails];
		
		[samochod setMarka: @"matiz"];
		[samochod setSkrytka: @"klucz"];
        [samochod printDetails];

		Samochod *bitle= [Samochod new];
		[bitle setMarka: @"bitle"];
        [bitle printDetails];



#if defined (__clang__)
    }
#else
	[pool drain];
#endif

    return 0;
}

