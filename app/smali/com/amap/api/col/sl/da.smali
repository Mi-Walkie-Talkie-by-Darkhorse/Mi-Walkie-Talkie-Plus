.class final Lcom/amap/api/col/sl/da;
.super Lcom/amap/api/col/sl/ds;
.source "DexDownLoadRequest.java"


# instance fields
.field private a:Lcom/amap/api/col/sl/cx;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/cx;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/ds;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/sl/da;->a:Lcom/amap/api/col/sl/cx;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/da;->a:Lcom/amap/api/col/sl/cx;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/cx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
