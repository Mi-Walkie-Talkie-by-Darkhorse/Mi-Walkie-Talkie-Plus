.class public Lcom/mi/milinkforgame/sdk/client/MiLinkException;
.super Ljava/lang/Throwable;
.source "MiLinkException.java"


# static fields
.field private static final serialVersionUID:J = 0x1a48ff041fL


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    const-string v0, "errCode:%d errMsg:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
