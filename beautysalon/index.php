<?php 
include 'template/head.php'; 
include 'template/nav.php'; 
include 'template/data.php';
?>
  <main>
    <section id="banner">
      <div class="row">
        <div class="col-lg-12">
            <div class="fon1">
              <h1 class="salon">Салон красоты <br>Sanqqbar<br><br>МЫ СОЗДАДИМ ДЛЯ ВАС<br> ИДЕАЛЬНЫЙ ОБРАЗ!</h1>  
            </div> 
         </div>
       </div>
      </section> 
      <h2 class="name">УСЛУГИ САЛОНА</h2>
      <section id="uslugi">
        <div class="row">
         <div class="col-lg-1"></div> 
          <div class="card col-lg-10" >
            <table class="table">
              <tr>
                <th>Название</th>
                <th>Цена</th>
                <th>Описание</th>
              </tr>           
               <?php
                 $result= $mysqli->query('SELECT * FROM uslugi');
                 foreach( $result as $row)   //для каждой строки результата $row  в цикле повторим
                 {
                  echo '<tr><td> <img src="'.$row['img'].'"</td>    
                        <tr><td>'.$row['name'].'</td>
                        <td>'.$row['price'].'</td>
                        <td>'.$row['opis_uslugi'].'</td></tr>';
                 }
                 $result->free(); //освободить память, занятую результатом
                 $mysqli->close(); //закрыть соединение с БД
               ?>
            </table>
          </div>
          <div class="col-lg-1"></div>
        </div>
      </section>
      <h2 class="name">О НАС</h2> 
      <section id="card">
        <div class="row">
         <div class="col-lg-1"></div> 
          <div class="card col-lg-10" >
           <div class="row">
            <div class="col-lg-5">
             <img src="images/салон красоты 1.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-7">
             <div class="card-body">
               <p class="card-text">Салон красоты Sanqqbar приглашает вас к себе в гости. Стрижка, укладка, окрашивание, маникюр, педикюр, массаж, косметологические уходы и SPA – всё это ждёт именно вас.<br>
                 Запишитесь в салон прямо сейчас и получите скидку на первую процедуру.<br>
                 <ul>
                   <li style="color:rgb(243, 13, 120)">Полное преображение всего за час.</li>
                   <li style="color:rgb(243, 13, 120)">Скидка при покупке курса процедур.</li>
                   <li style="color:rgb(243, 13, 120)" >Безупречный образ для свидания или деловой встречи.</li>
                   <li style="color:rgb(243, 13, 120)">Отличная возможность отдохнуть.</li></p>
                 </ul>
             </div>
            </div>
           </div>
         </div>
         <div class="col-lg-1"></div> 
        </div>
      </section>
      <h2 class="name">ФОРМА ОБРАТНОЙ СВЯЗИ</h2> 
      <section id="form">
        <div class="row">
         <div class="col-lg-1"></div>
          <div class="col-lg-4">
           <img src="images/vizitka.png" class="img-fluid rounded-start" alt="...">
          </div>
          <div class="col-lg-6">
           <form>
            <div class="mb-3">
             <label for="exampleInputUsluga1" class="form-label">Выберите услугу</label>
             <input type="usluga" class="form-control" id="exampleInputUsluga1" aria-describedby="usluga">
             <div id="usluga" class="form-text">Оставьте заявку через сайт на первую процедуру и получите карту гостя .</div>
            </div>
            <div class="mb-3">
             <label for="exampleInputName1" class="form-label">Как вас зовут</label>
             <input type="name" class="form-control" id="exampleInputName1">
            </div>
            <div class="mb-3">
             <label for="exampleInputPhone1" class="form-label">Ваш номер телефона</label>
             <input type="phone" class="form-control" id="exampleInputPhone1">
            </div>
            <button type="submit" class="btn btn-danger">Оставить заявку</button>
           </form>
          </div>
          <div class="col-lg-1"></div>
        </div>
      </section>
  </main> 
<?php 
include 'template/footer.php'; 
?>
