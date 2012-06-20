//
//  TRSimpleTestRouter.m
//  TiREST
//
//  Created by Kota Mizushima on 12/06/20.
//
//

#import "TRSimpleTestRouter.h"

@implementation TRSimpleTestRouter

- (void)configure {
	[self get:@"/" on:^(TRAction* action, NSDictionary* params, NSData* body) {
		return [action successWithText:@"<html><head><title>Hello, iPad</title></head><body><h1>Hello, iPad</h1>"];
	}];
	[self get:@"/json_hello" on:^(TRAction* action, NSDictionary* params, NSData* body) {
		return [action successWithJSON:[NSDictionary
										dictionaryWithObjectsAndKeys:@"Hello", @"message", nil]];
	}];
	[self get:@"/params" on:^(TRAction* action, NSDictionary* params, NSData* body) {
		return [action successWithJSON:params];
	}];
}

@end
