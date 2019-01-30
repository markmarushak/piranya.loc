<?php
wp_enqueue_style('main_css');
wp_enqueue_script('main_js');
?>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


<div class="main-block-home-controller">

    <section class="top-item">
        <header class="text-center">
            <h2>Секция наши преимущества</h2>
        </header>
        <article class="f-inlin">
            <h3>Добавить в группу</h3>
            <hr>
            <form class="add_item_block">
                <input type="hidden" name="name_section" value="block_item">

                <div class="form-group">
                    <label>
                        Нужно вставить код <a href="https://fontawesome.com/icons?from=io" target="_blank"> информация о иконках</a>
                        <input type="text" name="icon" required>
                    </label>
                </div>

                <div class="form-group">
                    <p>Введите текст на русском</p>
                    <textarea name="text-ru" cols="10" rows="2" required></textarea>
                </div>
                <div class="form-group">
                    <p>Введите текст на английском</p>
                    <textarea name="text-en" cols="10" rows="2" required></textarea>
                </div>
                <div class="form-group">
                    <p>Введите текст на немецком</p>
                    <textarea name="text-de" cols="10" rows="2" required></textarea>
                </div>

                <button>Добавить</button>

            </form>
        </article>

        <article class="f-inlin">
            <div id="block_item">
            </div>
        </article>

    </section>

    <section class="bottom-item">
        <article class="f-inlin">
            <h3>Каким образом будет проходить наше сотрудничество?</h3>
            <hr>
            <form class="add_item_block">
                <input type="hidden" name="name_section" value="block_algoritm">

                <div class="form-group">
                    <label for="">Введите информацию на русском</label>
                    <textarea name="text-ru" id="text-ru" cols="30" rows="3" required></textarea>
                </div>

                <div class="form-group">
                    <label for="">Введите информацию на английском</label>
                    <textarea name="text-en" id="text-en" cols="30" rows="3" required></textarea>
                </div>

                <div class="form-group">
                    <label for="">Введите информацию на немецком</label>
                    <textarea name="text-de" id="text-de" cols="30" rows="3" required></textarea>
                </div>

                <button>Добавить</button>

            </form>
        </article>

        <article class="f-inline">
            <div id="block_algoritm">

            </div>
        </article>
    </section>



</div>

