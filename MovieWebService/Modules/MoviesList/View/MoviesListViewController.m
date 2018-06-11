//
//  MoviesListViewController.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "MoviesListViewController.h"
#import "MoviesListViewOutput.h"
#import "MoviesListViewInput.h"
#import "Masonry.h"
#import "MovieListTableViewCell.h"

static NSString *CellIdentifier = @"MovieListTableViewCell";

@interface MoviesListViewController() <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) UITableView *tableView;

@end

@implementation MoviesListViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    [self.output viewIsReady];
}

- (void)setupView {
    self.navigationItem.title = @"Movies List";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupTableView];
}

- (void)setupTableView {
    self.tableView = [UITableView new];
    [self.view addSubview:self.tableView];
    [self.tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view);
        make.right.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view);
        make.bottom.mas_equalTo(self.view);
    }];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([MovieListTableViewCell class])
                                bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:nib forCellReuseIdentifier:CellIdentifier];
}

#pragma mark - MoviesListViewInput

- (void)showFilmsList {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.output numberOfFilms];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [cell setupWithDataProvider:[self.output dataProviderForRow:indexPath.row]];
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.output didSelectFilmAtRow:indexPath.row];
}

@end
