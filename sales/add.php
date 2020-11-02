              <?php
                require_once('cabecalho.php');
                require_once('functions.php'); 
                add();
              ?>

              <h2 class="titulo">Nova Venda</h2>

              <form action="add.php" method="post">
                <!-- area de campos do form -->
                <hr />
                <br>
                <div class="row">
                  <!--<div class="form-group col-sm-6 col-md-3">
                    <label for="name">Cliente</label>
                    <input type="text" class="form-control" id="name" name="sale['cliente']" required>
                  </div>-->
                  <div class="form-group col-sm-6 col-md-3">
                    <label for="name">Cliente</label>
                    <select class="form-control " id="dev-table">
                    <option value="0"></option>
                      <?php
                        $costumers = listaCustomers();
                        foreach($costumers as $sale) :
                          $KNome=KNome($sale["id"]);
                          echo '<option value='.$sale["id"].'>'.$KNome[0].'</option>';
                        endforeach
                      ?>
                    </select>
                  </div>

                  <div class="form-group col-sm-6 col-md-3">
                    <label for="name">Produto</label>
                    <select class="form-control " id="dev-table">
                    <option value="0"></option>
                      <?php
                        $costumers = listaProdutos();
                        $i=-1;
                        foreach($costumers as $sale) :
                          $i++;
                          echo '<option value='.$costumers[$i][1].'>'.$costumers[$i][0].'</option>';
                        endforeach
                      ?>
                    </select>
                  </div>
                  
                  <div class="form-group col-sm-6 col-md-3">
                    <label for="name">vendedor</label>
                    <select class="form-control " id="dev-table">
                    <option value="0"></option>
                      <?php
                        $costumers = listaVendedores();
                        $i=-1;
                        foreach($costumers as $sale) :
                          $i++;
                          echo '<option value='.$costumers[$i][1].'>'.$costumers[$i][0].'</option>';
                        endforeach
                      ?>
                    </select>
                  </div> 

                </div>
        
                <div class="row">
            
                  
                  <div class="form-group col-sm-6 hidden-md col-lg-2">
                    <label for="campo3">Data de Cadastro</label>
                    <input type="text" id="campo3" class="form-control" name="sale['created']" disabled>
                  </div>
                </div>
                 
                <div id="actions" class="row">
                  <div class="col-md-12">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                    <a href="index.php" class="btn btn-default">Cancelar</a>
                  </div>
                </div>

              </form>
            
            </div> <!-- fim container fluid -->
        </div><!-- fim page wrapper -->

    </div><!-- fim wrapper -->
<?php
  require_once("../topo.php");
?>
</body>
</html>