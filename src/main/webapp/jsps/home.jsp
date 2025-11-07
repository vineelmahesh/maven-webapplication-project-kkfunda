

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Mahesh Store — Shop Online</title>
  <style>
    /* Simple modern styling inspired by common e-commerce layouts */
    :root{--primary:#ff9900;--dark:#111;--muted:#666}
    *{box-sizing:border-box}
    body{font-family:Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial; margin:0;color:var(--dark);background:#f6f7fb}
    header{background:white;box-shadow:0 1px 4px rgba(20,20,20,0.06);position:sticky;top:0;z-index:40}
    .container{max-width:1200px;margin:0 auto;padding:0 18px}
    .topbar{display:flex;align-items:center;gap:18px;padding:14px 0}
    .logo{font-weight:700;font-size:20px;color:var(--primary);display:flex;align-items:center;gap:8px}
    .logo .mark{background:linear-gradient(135deg,#ffd27a,#ff9900);width:36px;height:36px;border-radius:8px;display:flex;align-items:center;justify-content:center;color:white;font-weight:800}
    .search{flex:1;display:flex}
    .search input{flex:1;padding:12px 14px;border-radius:6px 0 0 6px;border:1px solid #ddd;border-right:0;font-size:14px}
    .search button{padding:12px 16px;border-radius:0 6px 6px 0;border:1px solid #ddd;background:white;cursor:pointer}
    .icons{display:flex;gap:12px;align-items:center}
    nav.nav{display:flex;gap:12px;padding:10px 0;font-size:14px;color:var(--muted)}

    /* Hero */
    .hero{display:grid;grid-template-columns:1fr 420px;gap:20px;padding:28px 0;align-items:center}
    .hero-card{background:linear-gradient(180deg,#fff,#fff);padding:28px;border-radius:12px}
    .cta{display:inline-block;padding:12px 18px;border-radius:8px;background:var(--primary);color:white;text-decoration:none;font-weight:600;margin-top:12px}

    /* Categories */
    .categories{display:flex;gap:10px;overflow:auto;padding:12px 0}
    .cat{min-width:110px;background:white;padding:12px;border-radius:10px;text-align:center;box-shadow:0 1px 3px rgba(0,0,0,0.04)}

    /* Products grid */
    .grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px;padding:22px 0}
    .card{background:white;border-radius:10px;padding:12px;box-shadow:0 3px 8px rgba(13,13,13,0.04);display:flex;flex-direction:column}
    .card img{width:100%;height:180px;object-fit:cover;border-radius:8px}
    .card h4{margin:10px 0 6px;font-size:15px}
    .price{font-weight:700;color:var(--primary)}
    .add{margin-top:auto;padding:10px;border-radius:8px;border:0;background:#0f6;background-color:var(--primary);color:white;cursor:pointer}

    footer{padding:28px 0;color:var(--muted);font-size:14px}

    /* Responsive */
    @media (max-width:1000px){.grid{grid-template-columns:repeat(2,1fr)}.hero{grid-template-columns:1fr} }
    @media (max-width:600px){.grid{grid-template-columns:1fr}.topbar{padding:10px}.search input{font-size:13px}.logo{font-size:18px}}

    /* Small cart drawer */
    .cart-drawer{position:fixed;right:18px;top:72px;width:320px;max-height:70vh;background:white;border-radius:10px;box-shadow:0 12px 30px rgba(10,10,10,0.12);overflow:auto;transform:translateY(-10px);opacity:0;pointer-events:none;transition:all .18s ease}
    .cart-drawer.open{opacity:1;pointer-events:auto;transform:translateY(0)}
    .cart-item{display:flex;gap:10px;padding:12px;border-bottom:1px solid #f0f0f0}
    .cart-item img{width:64px;height:64px;object-fit:cover;border-radius:6px}
    .cart-footer{padding:12px}

    /* Simple badges */
    .badge{background:#ffe9c8;padding:6px 8px;border-radius:999px;font-weight:700;color:#663d00}
  </style>
</head>
<body>
  <header>
    <div class="container">
      <div class="topbar">
        <div class="logo"><div class="mark">M</div><div>Mahesh Store</div></div>
        <div class="search">
          <input id="searchInput" placeholder="Search for products, brands and more (try: laptop, headphones)" />
          <button id="searchBtn">Search</button>
        </div>
        <div class="icons">
          <div class="badge" id="cartCount">0</div>
          <button id="cartToggle" aria-label="Open cart">Cart 🛒</button>
        </div>
      </div>
      <nav class="nav">
        <div>Electronics</div>
        <div>Fashion</div>
        <div>Home</div>
        <div>Beauty</div>
        <div>Sports</div>
      </nav>
    </div>
  </header>

  <main class="container">
    <section class="hero">
      <div class="hero-card">
        <h1 style="margin:0 0 8px;">Welcome to Mahesh Store</h1>
        <p style="margin:0 0 12px;color:var(--muted)">A clean, responsive demo e‑commerce layout you can use as a starting point for your website.</p>
        <a class="cta" href="#products">Shop Bestsellers</a>
        <div style="display:flex;gap:8px;margin-top:18px;flex-wrap:wrap">
          <div style="background:#fff;border-radius:8px;padding:10px;box-shadow:0 1px 6px rgba(0,0,0,0.04)"><strong>Fast delivery</strong><div style="color:var(--muted);font-size:13px">Across India</div></div>
          <div style="background:#fff;border-radius:8px;padding:10px;box-shadow:0 1px 6px rgba(0,0,0,0.04)"><strong>Secure payments</strong><div style="color:var(--muted);font-size:13px">Multiple options</div></div>
        </div>
      </div>
      <div style="display:flex;flex-direction:column;gap:12px">
        <div style="background:linear-gradient(135deg,#fff,#fff);padding:18px;border-radius:12px;box-shadow:0 6px 18px rgba(0,0,0,0.04)">
          <strong>Deal of the day</strong>
          <div style="font-size:20px;margin-top:8px">Noise-Cancelling Headphones — 30% off</div>
          <div style="margin-top:12px"><button class="cta" onclick="document.getElementById('searchInput').value='headphones';filterProducts()">Shop Now</button></div>
        </div>
        <div style="background:white;padding:14px;border-radius:12px;box-shadow:0 6px 18px rgba(0,0,0,0.04)">
          <strong>Coming soon</strong>
          <div style="color:var(--muted);font-size:13px;margin-top:8px">Mahesh Premium — curated selection</div>
        </div>
      </div>
    </section>

    <section class="categories">
      <div class="cat">Mobiles</div>
      <div class="cat">Laptops</div>
      <div class="cat">TV</div>
      <div class="cat">Appliances</div>
      <div class="cat">Books</div>
      <div class="cat">Toys</div>
    </section>

    <section id="products">
      <h3 style="margin:6px 0 12px">Bestsellers</h3>
      <div class="grid" id="productGrid">
        <!-- product cards will be injected by JS -->
      </div>
    </section>
  </main>

  <aside class="cart-drawer" id="cartDrawer" aria-hidden="true">
    <div style="padding:12px;border-bottom:1px solid #f4f4f4"><strong>Your Cart</strong></div>
    <div id="cartItems"></div>
    <div class="cart-footer">
      <div style="display:flex;justify-content:space-between;align-items:center"><strong>Total:</strong><strong id="cartTotal">₹0</strong></div>
      <div style="margin-top:10px"><button style="width:100%;padding:12px;border-radius:8px;background:var(--primary);color:white;border:0;cursor:pointer">Proceed to Checkout</button></div>
    </div>
  </aside>

  <footer class="container">
    <div style="display:flex;justify-content:space-between;align-items:center;padding-top:18px;border-top:1px solid #eee">
      <div>© <strong>Mahesh Store</strong> — Built for demo purposes</div>
      <div style="color:var(--muted)">Help · Terms · Privacy</div>
    </div>
  </footer>

  <script>
    // Demo product data
    const products = [
      {id:1,name:'Wireless Headphones',price:3499,image:'https://picsum.photos/seed/headphones/800/600',desc:'Comfortable, long battery life.'},
      {id:2,name:'Smartphone X Pro',price:25999,image:'https://picsum.photos/seed/phone/800/600',desc:'Powerful performance and camera.'},
      {id:3,name:'Laptop Slim 14"',price:45999,image:'https://picsum.photos/seed/laptop/800/600',desc:'Lightweight with long battery.'},
      {id:4,name:'4K Smart TV 55"',price:38999,image:'https://picsum.photos/seed/tv/800/600',desc:'Stunning picture quality.'},
      {id:5,name:'Bluetooth Speaker',price:2499,image:'https://picsum.photos/seed/speaker/800/600',desc:'Portable with deep bass.'},
      {id:6,name:'Fitness Band',price:1999,image:'https://picsum.photos/seed/band/800/600',desc:'Track workouts and sleep.'},
      {id:7,name:'Instant Pot',price:6999,image:'https://picsum.photos/seed/pot/800/600',desc:'Cook quickly and easily.'},
      {id:8,name:'Noise Cancelling Earbuds',price:5499,image:'https://picsum.photos/seed/earbuds/800/600',desc:'Compact and clear sound.'}
    ];

    // Cart state
    const cart = {};

    function formatINR(n){return '₹'+n.toLocaleString('en-IN')}

    function renderProducts(list=products){
      const grid = document.getElementById('productGrid');
      grid.innerHTML='';
      list.forEach(p=>{
        const card = document.createElement('div');card.className='card';
        card.innerHTML = `
          <img loading="lazy" src="${p.image}" alt="${p.name}" />
          <h4>${p.name}</h4>
          <div style="color:var(--muted);font-size:13px">${p.desc}</div>
          <div style="display:flex;justify-content:space-between;align-items:center;margin-top:10px"><div class="price">${formatINR(p.price)}</div><button class="add" onclick="addToCart(${p.id})">Add</button></div>
        `;
        grid.appendChild(card);
      })
    }

    function addToCart(id){
      const p = products.find(x=>x.id===id);
      if(!cart[id]) cart[id]={...p,qty:0};
      cart[id].qty++;
      updateCartUI();
    }

    function updateCartUI(){
      const itemsEl = document.getElementById('cartItems');
      itemsEl.innerHTML='';
      let total = 0; let count = 0;
      Object.values(cart).forEach(it=>{
        total += it.price * it.qty; count += it.qty;
        const div = document.createElement('div');div.className='cart-item';
        div.innerHTML = `<img src="${it.image}" alt="${it.name}"><div style="flex:1"><div style="font-weight:700">${it.name}</div><div style="color:var(--muted);font-size:13px">${formatINR(it.price)} × ${it.qty}</div></div><div style="display:flex;flex-direction:column;gap:6px"><button onclick="changeQty(${it.id},1)">＋</button><button onclick="changeQty(${it.id},-1)">−</button></div>`;
        itemsEl.appendChild(div);
      })
      document.getElementById('cartTotal').innerText = formatINR(total);
      document.getElementById('cartCount').innerText = count;
    }

    function changeQty(id,delta){
      if(!cart[id]) return;
      cart[id].qty += delta;
      if(cart[id].qty<=0) delete cart[id];
      updateCartUI();
    }

    // cart drawer toggle
    const cartToggle = document.getElementById('cartToggle');
    const cartDrawer = document.getElementById('cartDrawer');
    cartToggle.addEventListener('click',()=>{
      cartDrawer.classList.toggle('open');
      cartDrawer.setAttribute('aria-hidden', !cartDrawer.classList.contains('open'));
    })

    // Search & filter
    const searchInput = document.getElementById('searchInput');
    function filterProducts(){
      const q = searchInput.value.trim().toLowerCase();
      if(!q){ renderProducts(); return; }
      const filtered = products.filter(p=> (p.name + ' ' + p.desc).toLowerCase().includes(q));
      renderProducts(filtered);
    }
    document.getElementById('searchBtn').addEventListener('click',filterProducts);
    searchInput.addEventListener('keydown',e=>{ if(e.key==='Enter') filterProducts(); });

    // initial render
    renderProducts();
    updateCartUI();
  </script>
</body>
</html>

