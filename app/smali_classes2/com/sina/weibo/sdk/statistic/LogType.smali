.class final enum Lcom/sina/weibo/sdk/statistic/LogType;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const-string v1, "SESSION_START"

    invoke-direct {v0, v1, v3}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->a:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const-string v1, "SESSION_END"

    invoke-direct {v0, v1, v4}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->b:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const-string v1, "FRAGMENT"

    invoke-direct {v0, v1, v5}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->c:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v6}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->d:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v7}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->e:Lcom/sina/weibo/sdk/statistic/LogType;

    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogType;

    const-string v1, "APP_AD_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/statistic/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->f:Lcom/sina/weibo/sdk/statistic/LogType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sina/weibo/sdk/statistic/LogType;

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->a:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->b:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->c:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->d:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->e:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogType;->f:Lcom/sina/weibo/sdk/statistic/LogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->g:[Lcom/sina/weibo/sdk/statistic/LogType;

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

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/statistic/LogType;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/sdk/statistic/LogType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->g:[Lcom/sina/weibo/sdk/statistic/LogType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
