.class Lcom/tbruyelle/rxpermissions2/b$2;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lio/reactivex/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/b;->a(Lio/reactivex/k;[Ljava/lang/String;)Lio/reactivex/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/b/g",
        "<",
        "Ljava/lang/Object;",
        "Lio/reactivex/k",
        "<",
        "Lcom/tbruyelle/rxpermissions2/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/tbruyelle/rxpermissions2/b;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/b;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/b$2;->b:Lcom/tbruyelle/rxpermissions2/b;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/b$2;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/k",
            "<",
            "Lcom/tbruyelle/rxpermissions2/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b$2;->b:Lcom/tbruyelle/rxpermissions2/b;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/b$2;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tbruyelle/rxpermissions2/b;->a(Lcom/tbruyelle/rxpermissions2/b;[Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/b$2;->a(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
