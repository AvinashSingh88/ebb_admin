 <ul id="sidebarNav" class="list-unstyled mb-0 sidebar-navbar view-all">
   <?php 
  $page = basename($_SERVER['SCRIPT_NAME'],".php");
  ?>
    <!--<li class="link-category0">
                           <div class="dropdown-title"></div>
                        </li>-->
    <li class="link-category link-category1aa">



       <div id="accordion" class="accordion-container">
          <article class="content-entry">
             <h4 class="article-title">
                <a class="dropdown-toggle1 dropdown-toggle-collapse1" href="javascript:;" role="button">
                   Show All Categories<span class="text-gray-25 font-size-12 font-weight-normal"> (9)</span> <i class="fa fa-angle-right" aria-hidden="true" style="    line-height: 35px;"></i>
                </a>
             </h4>
             <div class="accordion-content">
                <div class="link-categoryx link-category1az ">
                   <ul class="list-unstyled dropdown-list">

                     <li><a class="dropdown-item1 <?php if ($page=='building-materials'){ echo 'active';} ?>" href="building-materials.php">Structural Material (20) </a></li>
					  
                      <li><a class="dropdown-item1  <?php if ($page=='electricals'){ echo 'active';} ?>" href="electricals.php">Electricals (24) </a></li>
                      <li><a class="dropdown-item1  <?php if ($page=='plumbing'){ echo 'active';} ?>" href="plumbing.php">Plumbing (26)</a></li>
                      <li><a class="dropdown-item1  <?php if ($page=='sanitary'){ echo 'active';} ?>" href="sanitary.php">Sanitaryware & Bathrobes (26) </a></li>
                      <li><a class="dropdown-item1  <?php if ($page=='home-appliances'){ echo 'active';} ?>" href="home-appliances.php">Home Appliances & Furniture (20) </a></li>

                      <li><a class="dropdown-item1  <?php if ($page=='kitchen'){ echo 'active';} ?>" href="kitchen.php">Kitchen (20) </a></li>
                      <li><a class="dropdown-item1  <?php if ($page=='paint'){ echo 'active';} ?>" href="paint.php">Paints & Surface care (18) </a></li>
                      <li><a class="dropdown-item1  <?php if ($page=='furniture'){ echo 'active';} ?>" href="furniture.php">Wooden & Hardware Tools (16)</a></li>
                      <li><a class="dropdown-item1  <?php if ($page=='tiles'){ echo 'active';} ?>" href="tiles.php">Tiles & Floorings (16)</a></li>
                      <li><a class="dropdown-item1  <?php if ($page=='smart-home'){ echo 'active';} ?>" href="smart-home.php">Smart Home (16)</a></li>

                   </ul>
                </div>
             </div>
          </article>

       </div>
    </li>
  