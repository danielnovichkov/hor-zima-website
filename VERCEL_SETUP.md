# Настройка автоматического деплоя GitHub → Vercel

## 🚀 Автоматический деплой настроен!

Создан workflow файл:
- `.github/workflows/deploy.yml` - для Vercel (с токеном)

## ✅ Vercel деплой настроен!

Ваш Vercel токен добавлен в GitHub Secrets:
- ✅ `VERCEL_TOKEN` = `1mJLWX60B4M60kyDkFjSEF92`
- ✅ `VERCEL_ORG_ID` = `team_jSniaIWflbyEVAKzvswKX8cg`
- ✅ `VERCEL_PROJECT_ID` = `prj_iBl6XTKiK3wD9XMSktinaJoQdwGR`

**Текущий URL**: https://hor-zima-website-4jpyik0nu-john-smiths-projects-a2c16bf2.vercel.app

## 📋 Настройка GitHub Pages (вручную)

Для GitHub Pages нужно настроить вручную:
1. Перейдите в https://github.com/danielnovichkov/hor-zima-website/settings/pages
2. В разделе "Source" выберите "Deploy from a branch"
3. Выберите ветку: `main`
4. Выберите папку: `/ (root)`
5. Нажмите "Save"
6. URL будет: `https://danielnovichkov.github.io/hor-zima-website/`

## 🔄 Как это работает

При каждом push в main ветку:
1. GitHub Actions автоматически запускается
2. Код деплоится на Vercel
3. Сайт обновляется автоматически

## 📱 Текущие URL сайта:
- **Vercel**: https://hor-zima-website-4jpyik0nu-john-smiths-projects-a2c16bf2.vercel.app ✅
- **GitHub Pages**: https://danielnovichkov.github.io/hor-zima-website/ (после настройки)

## 🛠️ Ручной деплой

Если нужно обновить сайт вручную:
```bash
# Vercel
npx vercel --prod

# GitHub Pages (через настройки)
git push origin main
```
