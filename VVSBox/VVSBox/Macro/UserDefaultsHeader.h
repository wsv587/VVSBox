//
//  UserDefaultsHeader.h
//  VVSBox
//
//  Created by ws on 17/1/23.
//  Copyright © 2017年 ws. All rights reserved.
//

#ifndef UserDefaultsHeader_h
#define UserDefaultsHeader_h

#define GET_DEFAULTS [NSUserDefaults standardUserDefaults]
#define GET_DEFAULTS_OBJECT_FOR_KEY(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]
#define SET_DEFAULTS_OBJECT_FOR_KEY(object,key) [[NSUserDefaults standardUserDefaults] setObject:object forKey:key]

#endif /* UserDefaultsHeader_h */
