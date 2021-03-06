<div class="recent">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<a href="{config.relative_path}/recent">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

    <div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title">
			        <!-- IF loggedIn -->
					<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
					<!-- ELSE -->
					<a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					<!-- ENDIF loggedIn -->

					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							<!-- IF selectedCategory --><!-- IF selectedCategory.icon --><i class="fa fa-fw {selectedCategory.icon}"></i><!-- ENDIF selectedCategory.icon --> {selectedCategory.name}<!-- ELSE -->
							[[unread:all_categories]]<!-- ENDIF selectedCategory --> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li class="category">
								<a href="{config.relative_path}/{selectedFilter.url}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
							</li>
							<!-- BEGIN categories -->
							<li class="category" data-cid="{categories.cid}">
								<a href="{config.relative_path}/{selectedFilter.url}?cid={categories.cid}"><i class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i>{categories.level}<!-- IF categories.icon --><i class="fa fa-fw {categories.icon}"></i><!-- ENDIF categories.icon --> {categories.name}</a>
							</li>
							<!-- END categories -->
						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						{selectedFilter.name} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<!-- BEGIN filters -->
							<li class="category">
								<a href="{config.relative_path}/{filters.url}{querystring}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
							</li>
							<!-- END filters -->
						</ul>
					</div>
				</div>
		    </div>

		    <!-- IF !topics.length -->
			<div class="alert alert-warning" id="category-no-topics">
				[[recent:no_recent_topics]]
			</div>
			<!-- ENDIF !topics.length -->
			<!-- IMPORT partials/topics_list.tpl -->
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>
