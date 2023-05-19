.class Lcom/huawei/hms/framework/network/grs/c/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hms/framework/network/grs/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/framework/network/grs/c/b/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/a/c;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/c/m;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/c/m;Lcom/huawei/hms/framework/network/grs/c/b/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/k;->d:Lcom/huawei/hms/framework/network/grs/c/m;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c/k;->a:Lcom/huawei/hms/framework/network/grs/c/b/c;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/c/k;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/c/k;->c:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/hms/framework/network/grs/c/f;
    .locals 4

    new-instance v0, Lcom/huawei/hms/framework/network/grs/c/e;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c/k;->a:Lcom/huawei/hms/framework/network/grs/c/b/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c/k;->d:Lcom/huawei/hms/framework/network/grs/c/m;

    invoke-static {v2}, Lcom/huawei/hms/framework/network/grs/c/m;->b(Lcom/huawei/hms/framework/network/grs/c/m;)Lcom/huawei/hms/framework/network/grs/a/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/c/e;-><init>(Lcom/huawei/hms/framework/network/grs/c/b/c;Lcom/huawei/hms/framework/network/grs/a/a;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c/k;->d:Lcom/huawei/hms/framework/network/grs/c/m;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/m;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c/k;->c:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/c/e;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/c/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/c/k;->call()Lcom/huawei/hms/framework/network/grs/c/f;

    move-result-object v0

    return-object v0
.end method
