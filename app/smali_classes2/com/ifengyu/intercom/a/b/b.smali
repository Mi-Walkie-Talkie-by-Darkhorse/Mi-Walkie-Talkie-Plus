.class public abstract Lcom/ifengyu/intercom/a/b/b;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Lcom/ifengyu/intercom/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/a/b/b$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/a/b/b$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/a/b/b;->a:Lcom/ifengyu/intercom/a/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FJI)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract a(Lokhttp3/Call;Ljava/lang/Exception;I)V
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 0

    return-void
.end method

.method public abstract b(Lokhttp3/Response;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public c(Lokhttp3/Response;I)Z
    .locals 1

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method
