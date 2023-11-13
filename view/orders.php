<?php
include_once 'templates/header-html-inc.php';
include_once 'templates/nav-html-inc.php';
?>
    
      <section>
        <h1 class="text-center">List of Orders</h1><br>
        &nbsp;<button title="Crear Nueva Orden" type="button" class="btn btn-outline-primary"><i class="fa-solid fa-plus"></i> Create Order</button><br><br>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">Edit</th>
                <th scope="col"># Order</th>
                <th scope="col">Date</th>
                <th scope="col">Type Service</th>
                <th scope="col">Model Phone</th>
                <th scope="col">Price</th>
                <th scope="col">Status</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><button title="Edit Order" type="button" class="btn btn-outline-primary"><i class="fa-solid fa-pen-to-square"></i></button></td>
                <th scope="row">11808</th>
                <td>12/10/2023</td>
                <td>Battery</td>
                <td>Iphone 12 Pro Max</td>
                <td>$20.000</td>
                <td><span class="badge text-bg-success">Paid</span></td>
              </tr>
              <tr>
                <td><button title="Edit Order" type="button" class="btn btn-outline-primary"><i class="fa-solid fa-pen-to-square"></i></button></td>
                <th scope="row">11745</th>
                <td>12/10/2023</td>
                <td>Display</td>
                <td>Iphone 11</td>
                <td>$650.000</td>
                <td><span class="badge text-bg-danger">Not Paid</span></td>
              </tr>
              <tr>
                <td><button title="Edit Order" type="button" class="btn btn-outline-primary"><i class="fa-solid fa-pen-to-square"></i></button></td>
                <th scope="row">11745</th>
                <td>12/10/2023</td>
                <td>Display</td>
                <td>Iphone 11</td>
                <td>$650.000</td>
                <td><span class="badge text-bg-danger">Not Paid</span></td>
              </tr>
            </tbody>
          </table>
      </section>

    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
  </html>