# You can use most Debian-based base images
FROM node:21-slim

# Install curl
RUN apt-get update && apt-get install -y curl && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY compile_page.sh /compile_page.sh
RUN chmod +x /compile_page.sh

# Install dependencies and customize sandbox
WORKDIR /home/user/nextjs-app

RUN npx --yes create-next-app@15.3.3 . --yes

RUN npx --yes shadcn@2.6.3 init --yes -b neutral --force
RUN npx --yes shadcn@2.6.3 add --all --yes

# Move the Nextjs app to the home directory and remove the nextjs-app directory
RUN mv /home/user/nextjs-app/* /home/user/ && rm -rf /home/user/nextjs-app

# Debug: list files to see structure
RUN find /home/user -name "globals.css" -o -name "combobox.tsx"

# Fix: Remove tw-animate-css import from globals.css
RUN find /home/user -name "globals.css" -exec sed -i '/@import "tw-animate-css"/d' {} \;

# Fix: Remove unused children prop from combobox.tsx
RUN find /home/user -name "combobox.tsx" -exec sed -i '/^  children,$/d' {} \;
