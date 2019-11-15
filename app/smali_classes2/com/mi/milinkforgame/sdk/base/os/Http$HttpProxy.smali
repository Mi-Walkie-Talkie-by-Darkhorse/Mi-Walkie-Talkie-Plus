.class public abstract Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;
.super Ljava/lang/Object;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpProxy"
.end annotation


# static fields
.field public static Default:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;->Default:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
