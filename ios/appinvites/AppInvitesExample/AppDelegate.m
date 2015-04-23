//
//  AppDelegate.m
//  appinvites
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "AppDelegate.h"
#import <GoogleSignIn/GIDSignIn.h>
#import <GPPInvite.h>


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GIDSignIn sharedInstance].clientID = @"YOUR_CLIENT_ID.apps.googleusercontent.com";
  [GIDSignIn sharedInstance].scopes = @[ @"https://www.googleapis.com/auth/plus.login" ];
  [GPPInvite applicationDidFinishLaunching];
  return YES;
}


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
  return [[GIDSignIn sharedInstance] handleURL:url
                             sourceApplication:sourceApplication
                                    annotation:annotation];
}

@end