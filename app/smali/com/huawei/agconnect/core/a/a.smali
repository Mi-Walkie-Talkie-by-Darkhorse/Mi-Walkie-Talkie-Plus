.class public Lcom/huawei/agconnect/core/a/a;
.super Lb/b/a/a;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lb/b/a/a;-><init>()V

    iput-object p1, p0, Lcom/huawei/agconnect/core/a/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/huawei/agconnect/core/a/b;

    invoke-direct {v0, p1}, Lcom/huawei/agconnect/core/a/b;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/huawei/agconnect/core/a/c;

    invoke-virtual {v0}, Lcom/huawei/agconnect/core/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/huawei/agconnect/core/a/c;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->b:Landroid/content/Context;

    return-object v0
.end method
