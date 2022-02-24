.class final enum Lcom/sina/weibo/sdk/component/BrowserLauncher;
.super Ljava/lang/Enum;
.source "BrowserRequestParamBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sina/weibo/sdk/component/BrowserLauncher;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

.field public static final enum b:Lcom/sina/weibo/sdk/component/BrowserLauncher;

.field public static final enum c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

.field public static final enum d:Lcom/sina/weibo/sdk/component/BrowserLauncher;

.field public static final enum e:Lcom/sina/weibo/sdk/component/BrowserLauncher;

.field private static final synthetic f:[Lcom/sina/weibo/sdk/component/BrowserLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v1, 0x0

    const-string v2, "AUTH"

    invoke-direct {v0, v2, v1}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v2, 0x1

    const-string v3, "SHARE"

    invoke-direct {v0, v3, v2}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->b:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v3, 0x2

    const-string v4, "WIDGET"

    invoke-direct {v0, v4, v3}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v4, 0x3

    const-string v5, "COMMON"

    invoke-direct {v0, v5, v4}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->d:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v5, 0x4

    const-string v6, "GAME"

    invoke-direct {v0, v6, v5}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->e:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/sina/weibo/sdk/component/BrowserLauncher;

    .line 2
    sget-object v7, Lcom/sina/weibo/sdk/component/BrowserLauncher;->a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v7, v6, v1

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->b:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v6, v2

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v6, v3

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->d:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/sina/weibo/sdk/component/BrowserLauncher;->f:[Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/component/BrowserLauncher;
    .locals 1

    .line 1
    const-class v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-object p0
.end method

.method public static values()[Lcom/sina/weibo/sdk/component/BrowserLauncher;
    .locals 4

    .line 1
    sget-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->f:[Lcom/sina/weibo/sdk/component/BrowserLauncher;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
