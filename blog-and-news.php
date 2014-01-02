<!DOCTYPE html>
<html lang="et">
<head>
  <?php require("components/html-head.php") ?>
</head>
<body>
  <section class="site-content cfx">
    <?php require("components/site-header.php") ?>

    <main class="page-content cfx" role="main">
      <?php require("components/tags-blog.php") ?>
        <article class="post">
          <header class="post-header">
            <h1 class="post-title"><a href="#">First title</a></h1>
            <time datetime="#" class="post-date">12.10.12</time>
          </header>
          <section class="post-excerpt">Article excerpt</section>
        </article>
    </main>

    <?php require("components/site-footer.php") ?>
  </section>

  <script>var pageType = "blog"</script>
  <?php require("components/javascripts.php") ?>
</body>
</html>