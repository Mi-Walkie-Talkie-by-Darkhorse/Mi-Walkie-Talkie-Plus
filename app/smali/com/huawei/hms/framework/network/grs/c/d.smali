.class Lcom/huawei/hms/framework/network/grs/c/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/c/e;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/c/f;
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
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/a/c;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/c/e;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/c/e;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/d;->d:Lcom/huawei/hms/framework/network/grs/c/e;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c/d;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/c/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/c/d;->c:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/hms/framework/network/grs/c/f;
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c/d;->d:Lcom/huawei/hms/framework/network/grs/c/e;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c/d;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c/d;->c:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/c/e;->a(Lcom/huawei/hms/framework/network/grs/c/e;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/c/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/c/d;->call()Lcom/huawei/hms/framework/network/grs/c/f;

    move-result-object v0

    return-object v0
.end method
