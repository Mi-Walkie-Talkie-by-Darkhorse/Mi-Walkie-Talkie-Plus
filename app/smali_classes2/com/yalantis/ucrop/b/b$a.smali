.class public Lcom/yalantis/ucrop/b/b$a;
.super Ljava/lang/Object;
.source "BitmapLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/yalantis/ucrop/model/b;

.field c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/b;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/yalantis/ucrop/model/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/b/b$a;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/yalantis/ucrop/b/b$a;->b:Lcom/yalantis/ucrop/model/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/b/b$a;->c:Ljava/lang/Exception;

    return-void
.end method
