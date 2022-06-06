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
                   Show Services Categories<span class="text-gray-25 font-size-12 font-weight-normal"> (9)</span> <i class="fa fa-angle-right" aria-hidden="true" style="    line-height: 35px;"></i>
                </a>
             </h4>
             <div class="accordion-content">
                <div class="link-categoryx link-category1az ">
                   <ul class="list-unstyled dropdown-list">

                   
                             <li><a class="dropdown-item2 <?php if ($page=='turnkey-services'){ echo 'active';} ?>"
                                     href="turnkey-services.php">Turnkey Services </a></li>
                             <li><a class="dropdown-item2 <?php if ($page=='architect-services'){ echo 'active';} ?>"
                                     href="architect-services.php">Architect </a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='cost-cunsl-services'){ echo 'active';} ?>"
                                     href="cost-cunsl-services.php">Cost consultant</a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='interior-desgine-services'){ echo 'active';} ?>"
                                     href="interior-desgine-services.php">Interior design </a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='vastu-services'){ echo 'active';} ?>"
                                     href="vastu-services.php">Vastu / Archaeologist </a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='exterior-desgine-services'){ echo 'active';} ?>"
                                     href="exterior-desgine-services.php;"> Exterior Design </a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='labour-supplier-services'){ echo 'active';} ?>"
                                     href="labour-supplier-services.php;">Labour Suppliers </a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='contractor-services'){ echo 'active';} ?>"
                                     href="contractor-services.php">Contractor </a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='services-engineer-services'){ echo 'active';} ?>"
                                     href="services-engineer-services.php">Services Engineer </a></li>
                             <li><a class="dropdown-item2  <?php if ($page=='structural-engeeniring-services'){ echo 'active';} ?>"
                                     href="structural-engeeniring-services.php"> Structural Engineer </a></li>
                   </ul>
                </div>
             </div>
          </article>

       </div>
    </li>
  