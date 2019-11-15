.class public abstract Lcom/amap/api/col/sl/ds;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field f:I

.field g:I

.field h:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4e20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/col/sl/ds;->f:I

    iput v0, p0, Lcom/amap/api/col/sl/ds;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/sl/ds;->f:I

    return-void
.end method

.method public final a(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;

    return-void
.end method

.method public abstract b()Ljava/util/Map;
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
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/sl/ds;->g:I

    return-void
.end method

.method public abstract c()Ljava/util/Map;
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
.end method

.method public e()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method
