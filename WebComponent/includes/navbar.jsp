<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
  <a class="navbar-brand" href="index.jsp">CHIShop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Pagina principala</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cart.jsp">Cosul de cumparaturi</a>
      </li>
      <% if(auth != null) { %>
    	  <li class="nav-item">
          <a class="nav-link" href="orders.jsp">Comenzile mele</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="log-out">Deconectare</a>
        </li>
      <% } else { %>
    	  <li class="nav-item">
          <a class="nav-link" href="login.jsp">Conectare</a>
        </li>
       <% } %>
    </ul>
  </div>
  </div>
</nav>