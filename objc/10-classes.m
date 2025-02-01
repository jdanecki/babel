#import <Foundation/Foundation.h>
@interface Car : NSObject {
    @private
        NSString *secret;
    @public
        int instance_var;
    @protected 
        NSString *brand;
        NSInteger year;
}

@property (nonatomic, copy) NSString *brand;
@property (nonatomic, assign) NSInteger year;

//- instance method
//+ class method
- (void)printDetails;
@end

@implementation Car
    NSString *brand;
    NSInteger year;
    int instance_var;

@synthesize brand;
@synthesize year;
- (NSString *)getBrand {
    return brand; 
}

- (void)setBrand:(NSString *)newName {
    brand = [newName copy]; 
}

- (void)setSecret:(NSString *)newName {
    secret = [newName copy]; 
}

- (void)printDetails {
    NSLog(@"brand: %@, year: %ld instance_var=%d secret=%@", 
            brand, year, instance_var, secret);
}
@end

int main(int argc, const char * argv[]) {
#if defined (__clang__)
	@autoreleasepool {
#else
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
#endif
    		Car *car = [[Car alloc] init];
		car->instance_var=10;
		car.brand = @"volvo v49";
		car.year = 2010;
		[car printDetails];
		
		[car setBrand: @"matiz"];
		[car setSecret: @"key"];
		[car printDetails];
		
		Car *beetle = [Car new];
		[beetle setBrand: @"beetle"];
		[beetle printDetails];



#if defined (__clang__)
    }
#else
	[pool drain];
#endif

    return 0;
}

