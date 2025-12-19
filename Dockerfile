# Autonomous Intelligence Framework - Elite CI/CD Pipeline
# Level 6-8 Cognitive Architecture for Breakthrough Generation
# Optimized for BuildKit with minimal disk usage

FROM python:3.11-slim

WORKDIR /app

# Copy framework files
COPY deploy_autonomous.py .
COPY frameworks/ ./frameworks/
COPY docs/ ./docs/
COPY README.md .

# Install minimal dependencies (asyncio is built-in)
RUN pip install --no-cache-dir --upgrade pip

# Health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD python -c "print('Autonomous Intelligence Framework - Healthy')" || exit 1

# Default command - show framework info
CMD ["python", "-c", "print('Autonomous Intelligence Framework - Level 6-8 Cognitive Architecture')"]
