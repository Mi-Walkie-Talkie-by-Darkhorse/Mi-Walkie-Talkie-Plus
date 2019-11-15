.class public interface abstract Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract keys()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.end method

.method public abstract remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method
