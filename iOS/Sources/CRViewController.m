
#import "CRViewController.h"
#import "objcrust.h"


@implementation CRViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    
    NSString *title = nil;
    NSString *value = nil;
 
    switch (indexPath.row) {
        case 0: {
            title = @"get_num()";
            value = [NSString stringWithFormat:@"%d",get_num()];
            break;
        }
            
        case 1: {
            title = @"get_float()";
            value = [NSString stringWithFormat:@"%f",get_float()];
            break;
        }
            
        case 2: {
            title = @"inc_num(get_num())";
            value = [NSString stringWithFormat:@"%d",inc_num(get_num())];
            break;
        }
            
        case 3: {
            title = @"add_num(42, 24)";
            value = [NSString stringWithFormat:@"%d",add_nums(42, 24)];
            break;
        }
            
        case 4: {
            title = @"inc_num_ptr(&num)";
            value = [NSString stringWithFormat:@"%d",({ unsigned num = 10; inc_num_ptr(&num); num; })];
            break;
        }
            
        case 5: {
            title = @"inc_float_ptr(&num)";
            value = [NSString stringWithFormat:@"%f",({ double num = 41.42; inc_float_ptr(&num); num; })];
            break;
        }
            
        case 6: {
            Pair pair = get_pair();
            title = @"get_pair()";
            value = [NSString stringWithFormat:@"(%u,%u)", pair.foo, pair.bar];
            break;
        }
            
        case 7: {
            Pair pair = inc_pair(get_pair());
            title = @"inc_pair(get_pair())";
            value = [NSString stringWithFormat:@"(%u,%u)", pair.foo, pair.bar];
            break;
        }
            
        case 8: {
            Pair pair = get_pair();
            inc_pair_ptr(&pair);
            title = @"inc_pair_ptr(&pair)";
            value = [NSString stringWithFormat:@"(%u,%u)", pair.foo, pair.bar];
            break;
        }
            
        case 9: {
            Complex comp = get_complex();
            title = @"get_complex()";
            value = [NSString stringWithFormat:@"(%f,%f)", comp.real, comp.img];
            break;
        }
            
        case 10: {
            Complex comp = inc_complex(get_complex());
            title = @"inc_complex(get_complex())";
            value = [NSString stringWithFormat:@"(%f,%f)", comp.real, comp.img];
            break;
        }
            
        case 11: {
            Complex comp = get_complex();
            inc_complex_ptr(&comp);
            title = @"inc_complex_ptr(&comp)";
            value = [NSString stringWithFormat:@"(%f,%f)", comp.real, comp.img];
            break;
        }
    }
    
    cell.textLabel.text = title;
    cell.detailTextLabel.text = value;
    
    return cell;
}

@end
