.class final Lcom/zhihu/matisse/internal/entity/b$b;
.super Ljava/lang/Object;
.source "SelectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/matisse/internal/entity/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/zhihu/matisse/internal/entity/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/zhihu/matisse/internal/entity/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zhihu/matisse/internal/entity/b;-><init>(Lcom/zhihu/matisse/internal/entity/b$a;)V

    sput-object v0, Lcom/zhihu/matisse/internal/entity/b$b;->a:Lcom/zhihu/matisse/internal/entity/b;

    return-void
.end method

.method static synthetic a()Lcom/zhihu/matisse/internal/entity/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/zhihu/matisse/internal/entity/b$b;->a:Lcom/zhihu/matisse/internal/entity/b;

    return-object v0
.end method
