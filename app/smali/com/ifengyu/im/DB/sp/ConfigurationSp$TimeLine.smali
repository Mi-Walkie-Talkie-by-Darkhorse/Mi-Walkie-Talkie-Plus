.class public final enum Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;
.super Ljava/lang/Enum;
.source "ConfigurationSp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/DB/sp/ConfigurationSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

.field public static final enum SESSION_UPDATE_TIME:Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    const-string v1, "SESSION_UPDATE_TIME"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;->SESSION_UPDATE_TIME:Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;->SESSION_UPDATE_TIME:Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;->$VALUES:[Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;
    .locals 1

    const-class v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;->$VALUES:[Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    invoke-virtual {v0}, [Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/DB/sp/ConfigurationSp$TimeLine;

    return-object v0
.end method
