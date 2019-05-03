#include <CoreServices/CoreServices.h>
#import "AvlService.h"

int main (int argc, const char * argv[])
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
#if 0
	
	AvlPortSoapBinding* binding = [AvlServiceSvc AvlPortSoapBinding];
	binding.logXMLInOut = YES;
	
	AvlPortSoapBindingResponse* rsp = [binding getTimeUsing];
	
	NSLog(@"Response: %@", rsp);
	
#else
	
	id theTime = [AvlService getTime];
	
	id theAgencies = [AvlService getAgencies];
	
	id theRouteInfo = [AvlService getLatestByRoute:@"http://transit.metrokc.gov" in_in1:71];

	
	NSLog(@"theTime: %@", theTime);
    NSLog(@"theAgencies: %@", theAgencies);
    NSLog(@"route info for 71: %@", theRouteInfo);
	
#endif
	
	[pool drain];
    return 0;
}
