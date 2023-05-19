.class Lcom/huawei/hms/framework/network/grs/c/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/framework/network/grs/c/b/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/a/c;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/b;

.field final synthetic e:Lcom/huawei/hms/framework/network/grs/c/m;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/c/m;Lcom/huawei/hms/framework/network/grs/c/b/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;Lcom/huawei/hms/framework/network/grs/b;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/l;->e:Lcom/huawei/hms/framework/network/grs/c/m;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c/l;->a:Lcom/huawei/hms/framework/network/grs/c/b/c;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/c/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/c/l;->c:Lcom/huawei/hms/framework/network/grs/a/c;

    iput-object p5, p0, Lcom/huawei/hms/framework/network/grs/c/l;->d:Lcom/huawei/hms/framework/network/grs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c/l;->e:Lcom/huawei/hms/framework/network/grs/c/m;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c/l;->a:Lcom/huawei/hms/framework/network/grs/c/b/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c/l;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c/l;->c:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/c/f;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c/l;->d:Lcom/huawei/hms/framework/network/grs/b;

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/m;Lcom/huawei/hms/framework/network/grs/c/f;Lcom/huawei/hms/framework/network/grs/b;)V

    return-void
.end method
