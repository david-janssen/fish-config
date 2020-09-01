function purge_python_cache
    find -name "__pycache__" -type d -exec rm -rf {} +
    find -name ".mypy_cache" -type d -exec rm -rf {} +
    find -name "*.pyc" -type f -delete
end
