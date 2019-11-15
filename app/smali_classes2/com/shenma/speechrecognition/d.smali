.class Lcom/shenma/speechrecognition/d;
.super Ljava/util/HashMap;


# instance fields
.field final synthetic a:Lcom/shenma/speechrecognition/k;


# direct methods
.method constructor <init>(Lcom/shenma/speechrecognition/k;)V
    .locals 3

    const/4 v2, 0x6

    iput-object p1, p0, Lcom/shenma/speechrecognition/d;->a:Lcom/shenma/speechrecognition/k;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SAMSUNG"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shenma/speechrecognition/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MEIZU"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shenma/speechrecognition/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "QIKU"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shenma/speechrecognition/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HUAWEI"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shenma/speechrecognition/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
