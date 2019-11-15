.class public final Lcom/mi/milinkforgame/sdk/data/Option;
.super Ljava/lang/Object;
.source "Option.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "options.for."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/base/Global;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static commit()Z
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 3

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static startListen(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static stopListen(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Option;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
