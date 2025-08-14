# Инструкции по деплою сайта "Хор Зима"

## 🚀 Быстрый деплой на Vercel (рекомендуется)

### Шаг 1: Подготовка репозитория
1. Создайте новый репозиторий на GitHub:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Hor Zima website"
   git branch -M main
   git remote add origin https://github.com/your-username/hor-zima-website.git
   git push -u origin main
   ```

### Шаг 2: Деплой на Vercel
1. Перейдите на [vercel.com](https://vercel.com)
2. Войдите через GitHub аккаунт
3. Нажмите "New Project"
4. Выберите ваш репозиторий `hor-zima-website`
5. Vercel автоматически определит настройки из `vercel.json`
6. Нажмите "Deploy"

### Шаг 3: Настройка домена (опционально)
1. В настройках проекта Vercel перейдите в "Domains"
2. Добавьте ваш кастомный домен
3. Настройте DNS записи согласно инструкциям Vercel

## 📱 Деплой на GitHub Pages

### Шаг 1: Настройка GitHub Pages
1. В репозитории перейдите в Settings → Pages
2. В разделе "Source" выберите "Deploy from a branch"
3. Выберите ветку `main` и папку `/ (root)`
4. Нажмите "Save"

### Шаг 2: Создание GitHub Actions (опционально)
Создайте файл `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    
    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./
```

## 🔧 Настройка для продакшена

### 1. Оптимизация изображений
```bash
# Установите ImageOptim или используйте онлайн сервисы
# Рекомендуемые форматы: WebP, AVIF
# Размеры: максимум 1920px для больших изображений
```

### 2. Настройка аналитики
Добавьте Google Analytics в `<head>` секцию:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### 3. Настройка SEO
Добавьте мета-теги в `<head>`:

```html
<meta name="description" content="Community Center 'Хор Зима' - культурно-образовательный центр в Баре, Черногория">
<meta name="keywords" content="образование, культура, Бар, Черногория, русскоязычное сообщество">
<meta name="author" content="Community Center 'Хор Зима'">
<meta property="og:title" content="Community Center 'Хор Зима'">
<meta property="og:description" content="Культурно-образовательный центр в Баре">
<meta property="og:image" content="https://your-domain.com/og-image.jpg">
<meta property="og:url" content="https://your-domain.com">
```

## 🌐 Настройка домена

### Покупка домена
Рекомендуемые регистраторы:
- **Namecheap** - хорошие цены, русскоязычная поддержка
- **GoDaddy** - популярный, много доменов
- **Google Domains** - простой интерфейс

### Рекомендуемые домены:
- `horzima.me` (Черногория)
- `horzima.com`
- `horzima.org`
- `horzima-bar.me`

## 📊 Мониторинг и аналитика

### 1. Google Analytics 4
- Создайте аккаунт в [Google Analytics](https://analytics.google.com)
- Получите Measurement ID
- Добавьте код отслеживания на сайт

### 2. Google Search Console
- Подтвердите владение сайтом
- Отправьте sitemap.xml
- Мониторьте индексацию

### 3. Vercel Analytics (если используете Vercel)
- Включите в настройках проекта
- Получите детальную статистику

## 🔒 Безопасность

### 1. HTTPS
- Vercel и GitHub Pages автоматически предоставляют SSL
- Убедитесь, что все ссылки используют HTTPS

### 2. Заголовки безопасности
Уже настроены в `vercel.json`:
- X-Content-Type-Options
- X-Frame-Options
- X-XSS-Protection
- Referrer-Policy

### 3. CSP (Content Security Policy)
Добавьте в `<head>`:

```html
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src 'self' 'unsafe-inline' https://cdnjs.cloudflare.com https://www.googletagmanager.com; style-src 'self' 'unsafe-inline' https://cdnjs.cloudflare.com; img-src 'self' data: https:; font-src 'self' https://cdnjs.cloudflare.com;">
```

## 🚀 Оптимизация производительности

### 1. Сжатие файлов
Vercel автоматически сжимает файлы. Для GitHub Pages добавьте:

```html
<!-- Preload критических ресурсов -->
<link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" as="style">
<link rel="preload" href="placeholder-hero-bg.jpg" as="image">
```

### 2. Кэширование
Добавьте в `vercel.json`:

```json
{
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        {
          "key": "Cache-Control",
          "value": "public, max-age=31536000, immutable"
        }
      ]
    }
  ]
}
```

## 📱 Тестирование

### 1. Мобильная оптимизация
- Протестируйте на реальных устройствах
- Используйте Chrome DevTools для эмуляции
- Проверьте скорость загрузки

### 2. Кроссбраузерное тестирование
- Chrome (последние версии)
- Firefox (последние версии)
- Safari (последние версии)
- Edge (последние версии)

### 3. Тестирование доступности
- Проверьте контрастность цветов
- Убедитесь в работе с клавиатуры
- Протестируйте с screen reader

## 🔄 Обновления

### Автоматический деплой
При push в ветку `main`:
- Vercel автоматически пересоберет и задеплоит сайт
- GitHub Pages обновится в течение нескольких минут

### Ручной деплой
```bash
# Для Vercel
vercel --prod

# Для GitHub Pages
git push origin main
```

## 📞 Поддержка

### Полезные ссылки:
- [Vercel Documentation](https://vercel.com/docs)
- [GitHub Pages Documentation](https://pages.github.com/)
- [Google Analytics Help](https://support.google.com/analytics)
- [Google Search Console Help](https://support.google.com/webmasters)

### Контакты для технической поддержки:
- Создайте issue в GitHub репозитории
- Обратитесь к документации проекта
- Проверьте логи деплоя в Vercel/GitHub

---

**Успешного деплоя! 🎉**
