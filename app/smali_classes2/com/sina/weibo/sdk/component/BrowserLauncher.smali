.class final enum Lcom/sina/weibo/sdk/component/BrowserLauncher;
.super Ljava/lang/Enum;
.source "BrowserRequestParamBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const-string v1, "AUTH"

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v3}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->b:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const-string v1, "WIDGET"

    invoke-direct {v0, v1, v4}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v5}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->d:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    new-instance v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v6}, Lcom/sina/weibo/sdk/component/BrowserLauncher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->e:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sina/weibo/sdk/component/BrowserLauncher;

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->b:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->d:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->e:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->f:[Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/component/BrowserLauncher;
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/sdk/component/BrowserLauncher;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->f:[Lcom/sina/weibo/sdk/component/BrowserLauncher;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/component/BrowserLauncher;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
