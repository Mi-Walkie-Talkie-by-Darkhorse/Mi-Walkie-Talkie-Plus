.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;
.super Ljava/lang/Object;
.source "Account.java"


# static fields
.field private static instance:Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;


# instance fields
.field private guid:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;->instance:Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;->instance:Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;

    return-object v0
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;->guid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/Account;->token:Ljava/lang/String;

    return-void
.end method
