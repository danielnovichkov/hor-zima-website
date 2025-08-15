# Настройка автоматического деплоя GitHub → Vercel

## 🚀 Автоматический деплой настроен!

Создано два workflow файла:
- `.github/workflows/deploy.yml` - для Vercel (требует токен)
- `.github/workflows/deploy-github-pages.yml` - для GitHub Pages (работает сразу)

## 📋 Вариант 1: GitHub Pages (работает сразу)

GitHub Pages будет работать автоматически без дополнительной настройки:
1. Перейдите в Settings репозитория
2. Включите GitHub Pages в разделе "Pages"
3. Выберите источник: "Deploy from a branch"
4. Выберите ветку: `gh-pages`
5. URL будет: `https://danielnovichkov.github.io/hor-zima-website/`

## 🔑 Вариант 2: Vercel (требует токен)

### Шаг 1: Получение Vercel токена
1. Перейдите на https://vercel.com/account/tokens
2. Нажмите "Create Token"
3. Назовите токен: `github-actions-hor-zima`
4. Выберите "Full Account" scope
5. Скопируйте токен

### Шаг 2: Настройка GitHub Secrets
1. Перейдите в репозиторий: https://github.com/danielnovichkov/hor-zima-website
2. Нажмите "Settings" → "Secrets and variables" → "Actions"
3. Добавьте секреты:

| Name | Value |
|------|-------|
| `VERCEL_TOKEN` | [токен из шага 1] |
| `VERCEL_ORG_ID` | `team_jSniaIWflbyEVAKzvswKX8cg` |
| `VERCEL_PROJECT_ID` | `prj_iBl6XTKiK3wD9XMSktinaJoQdwGR` |

## 🔄 Как это работает

При каждом push в main ветку:
1. GitHub Actions автоматически запускается
2. Код деплоится на выбранную платформу
3. Сайт обновляется автоматически

## 📱 Текущие URL сайта:
- **Vercel**: https://hor-zima-website-4jpyik0nu-john-smiths-projects-a2c16bf2.vercel.app
- **GitHub Pages**: https://danielnovichkov.github.io/hor-zima-website/ (после настройки)

## 🛠️ Ручной деплой

Если нужно обновить сайт вручную:
```bash
# Vercel
npx vercel --prod

# GitHub Pages (через Actions)
git push origin main
```
