.class public final enum Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;
.super Ljava/lang/Enum;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpProxyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

.field public static final enum Direct:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

.field public static final enum NeverTry:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

.field public static final enum ViaProxy:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    const-string v1, "NeverTry"

    invoke-direct {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->NeverTry:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    const-string v1, "Direct"

    invoke-direct {v0, v1, v3}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->Direct:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    const-string v1, "ViaProxy"

    invoke-direct {v0, v1, v4}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->ViaProxy:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->NeverTry:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->Direct:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->ViaProxy:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->$VALUES:[Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    return-object v0
.end method

.method public static values()[Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->$VALUES:[Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    invoke-virtual {v0}, [Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;

    return-object v0
.end method
