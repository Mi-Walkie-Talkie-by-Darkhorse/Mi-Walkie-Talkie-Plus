.class Lcom/tbruyelle/rxpermissions2/b$1;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lio/reactivex/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/b;->a([Ljava/lang/String;)Lio/reactivex/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/p",
        "<TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/tbruyelle/rxpermissions2/b;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/b;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/b$1;->b:Lcom/tbruyelle/rxpermissions2/b;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/b$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/k;)Lio/reactivex/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<TT;>;)",
            "Lio/reactivex/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b$1;->b:Lcom/tbruyelle/rxpermissions2/b;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/b$1;->a:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tbruyelle/rxpermissions2/b;->a(Lcom/tbruyelle/rxpermissions2/b;Lio/reactivex/k;[Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/b$1;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->buffer(I)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/tbruyelle/rxpermissions2/b$1$1;

    invoke-direct {v1, p0}, Lcom/tbruyelle/rxpermissions2/b$1$1;-><init>(Lcom/tbruyelle/rxpermissions2/b$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->flatMap(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
