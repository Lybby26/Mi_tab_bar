//
//  ViewController.m
//  Mi_tab_bar
//
//  Created by Mac Mini on 11/1/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import "Home.h"
#import "cellMainTable.h"
@interface Home ()
@property NSMutableArray *partidos;
@property NSMutableArray *fecha;
@property NSMutableArray *hora;
@property NSMutableArray *estadio;
@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self initController];
}

-(void)initController {
    self.partidos  = [[NSMutableArray alloc] initWithObjects: @"J1: Naranjeros vs Charros", @"J2: Naranjeros vs Charros", @"J3: Naranjeros vs Charros", @"J1: Aguilas vs Charros", @"J2: Aguilas vs Charros", @"J3: Aguilas vs Charros",@"J1: Cañeros vs Charros",@"J2: Cañeros vs Charros",@"J3: Cañeros vs Charros",nil];
    
    self.fecha  = [[NSMutableArray alloc] initWithObjects: @"MAR 28 NOV", @"MIE 29 NOV",@"JUE 30 NOV",@"VIE 05 DIC",@"SAB 06 DIC",@"DOM 07 DIC",@"MAR 08 DIC",@"MIE 09 DIC", @"JUE 10 DIC",nil];
    
     self.hora  = [[NSMutableArray alloc] initWithObjects: @"19:00 hrs", @"19:00 hrs",@"19:00 hrs",@"19:00 hrs",@"19:00 hrs",@"19:00 hrs",@"19:00 hrs",@"19:00 hrs", @"19:00 hrs", nil];
     self.estadio  = [[NSMutableArray alloc] initWithObjects: @"Estadio Charros", @"Estadio Charros",@"Estadio Charros",@"Estadio Charros",@"Estadio Charros",@"Estadio Charros",@"Estadio Charros",@"Estadio Charros", @"Estadio Charros", nil];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.partidos.count;
    
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMainTable *cell = (cellMainTable *)[tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMainTable" bundle:nil] forCellReuseIdentifier:@"cellMainTable"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    }
    //Fill cell with info from arrays
    cell.lblEquipos.text       = self.partidos[indexPath.row];
    cell.lblHora.text          = self.hora[indexPath.row];
    cell.lblFecha.text         = self.fecha[indexPath.row];
    cell.lblEstadio.text       = self.estadio[indexPath.row];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Value of row = %ld", (long)indexPath.row);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
