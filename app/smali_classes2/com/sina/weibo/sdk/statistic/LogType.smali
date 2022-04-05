.class final enum Lcom/sina/weibo/sdk/statistic/LogType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sina/weibo/sdk/statistic/LogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/weibo/sdk/statistic/LogType;

.field public static final enum b:Lcom/sina/weibo/sdk/statistic/LogType;

.field public static final enum c:Lcom/sina/weibo/sdk/statistic/LogType;

.field public static final enum d:Lcom/sina/weibo/sdk/statistic/LogType;

.field public static final enum e:Lcom/sina/weibo/sdk/statistic/LogType;

.field public static final enum f:Lcom/sina/weibo/sdk/statistic/LogType;

.field private static final synthetic g:[Lcom/sina/weibo/sdk/statistic/LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v1, 0x0

    const-string v2, "SESSION_START"

    invoke-direct {v0, v2, v1}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->a:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v2, 0x1

    const-string v3, "SESSION_END"

    invoke-direct {v0, v3, v2}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->b:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v3, 0x2

    const-string v4, "FRAGMENT"

    invoke-direct {v0, v4, v3}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->c:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v4, 0x3

    const-string v5, "EVENT"

    invoke-direct {v0, v5, v4}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->d:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v5, 0x4

    const-string v6, "ACTIVITY"

    invoke-direct {v0, v6, v5}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->e:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v6, 0x5

    const-string v7, "APP_AD_START"

    invoke-direct {v0, v7, v6}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->f:Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/sina/weibo/sdk/statistic/LogType;

    sget-object v8, Lcom/sina/weibo/sdk/statistic/LogType;->a:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->b:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->c:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->d:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->e:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/sina/weibo/sdk/statistic/LogType;->g:[Lcom/sina/weibo/sdk/statistic/LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/statistic/LogType;
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sina/weibo/sdk/statistic/LogType;

    return-object p0
.end method

.method public static values()[Lcom/sina/weibo/sdk/statistic/LogType;
    .locals 4

    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->g:[Lcom/sina/weibo/sdk/statistic/LogType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
