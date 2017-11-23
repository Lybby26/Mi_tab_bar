//
//  PBObject.h
//  Mi_tab_bar
//
//  Created by Mac Mini on 11/22/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

@interface PBObject : JSONModel
@property (strong, nonatomic) NSString *spartido;
@property (strong, nonatomic) NSString *sFecha;
@property (strong, nonatomic) NSString *sHora;
@property (strong, nonatomic) NSString *sEstadio;

@property (strong, nonatomic) NSMutableArray *partidos;
@property (strong, nonatomic) NSMutableArray *fechas;
@property (strong, nonatomic) NSMutableArray *horas;
@property (strong, nonatomic) NSMutableArray *estadios;
@end
