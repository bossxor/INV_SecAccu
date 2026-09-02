.class public final Lcom/secaccu/clock/FavoriteStore;
.super Ljava/lang/Object;
.source "FavoriteStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/secaccu/clock/FavoriteStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoriteStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoriteStore.kt\ncom/secaccu/clock/FavoriteStore\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n288#3,2:80\n819#3:82\n847#3,2:83\n*S KotlinDebug\n*F\n+ 1 FavoriteStore.kt\ncom/secaccu/clock/FavoriteStore\n*L\n35#1:80,2\n49#1:82\n49#1:83,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000eH\u0002R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/secaccu/clock/FavoriteStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "add",
        "Lcom/secaccu/clock/TimeSite;",
        "name",
        "",
        "url",
        "all",
        "",
        "remove",
        "",
        "id",
        "save",
        "sites",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/secaccu/clock/FavoriteStore$Companion;

.field private static final KEY:Ljava/lang/String; = "sites"

.field private static final PREFS:Ljava/lang/String; = "secaccu_favorites"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/secaccu/clock/FavoriteStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/secaccu/clock/FavoriteStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/secaccu/clock/FavoriteStore;->Companion:Lcom/secaccu/clock/FavoriteStore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "secaccu_favorites"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/secaccu/clock/FavoriteStore;->prefs:Landroid/content/SharedPreferences;

    .line 8
    return-void
.end method

.method private final save(Ljava/util/List;)V
    .locals 6
    .param p1, "sites"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/secaccu/clock/TimeSite;

    .line 55
    .local v2, "site":Lcom/secaccu/clock/TimeSite;
    nop

    .line 56
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/secaccu/clock/TimeSite;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 58
    const-string v4, "name"

    invoke-virtual {v2}, Lcom/secaccu/clock/TimeSite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 59
    const-string v4, "url"

    invoke-virtual {v2}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 62
    .end local v2    # "site":Lcom/secaccu/clock/TimeSite;
    :cond_0
    iget-object v1, p0, Lcom/secaccu/clock/FavoriteStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sites"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/TimeSite;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v0, p2}, Lcom/secaccu/clock/Sites;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "normalized":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/secaccu/clock/FavoriteStore;->all()Ljava/util/List;

    move-result-object v8

    .line 35
    .local v8, "existing":Ljava/util/List;
    move-object v1, v8

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/secaccu/clock/TimeSite;

    .local v5, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v6, 0x0

    .line 35
    .local v6, "$i$a$-firstOrNull-FavoriteStore$add$1":I
    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v0, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 80
    .end local v5    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v6    # "$i$a$-firstOrNull-FavoriteStore$add$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 81
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 35
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v4, Lcom/secaccu/clock/TimeSite;

    if-eqz v4, :cond_2

    move-object v1, v4

    .line 79
    .local v1, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v2, 0x0

    .line 35
    .local v2, "$i$a$-let-FavoriteStore$add$2":I
    return-object v1

    .line 36
    .end local v1    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v2    # "$i$a$-let-FavoriteStore$add$2":I
    :cond_2
    nop

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fav-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$a$-ifBlank-FavoriteStore$add$site$1":I
    sget-object v3, Lcom/secaccu/clock/FavoriteStore;->Companion:Lcom/secaccu/clock/FavoriteStore$Companion;

    invoke-virtual {v3, v0}, Lcom/secaccu/clock/FavoriteStore$Companion;->hostLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-ifBlank-FavoriteStore$add$site$1":I
    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 39
    nop

    .line 40
    sget-object v1, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v1, v0}, Lcom/secaccu/clock/Sites;->kindFor(Ljava/lang/String;)Lcom/secaccu/clock/SyncKind;

    move-result-object v5

    .line 41
    nop

    .line 42
    nop

    .line 36
    new-instance v9, Lcom/secaccu/clock/TimeSite;

    const-string v6, "\uc990\uaca8\ucc3e\uae30"

    const/4 v7, 0x1

    move-object v1, v9

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;Z)V

    .line 44
    .local v1, "site":Lcom/secaccu/clock/TimeSite;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v3, v8

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/secaccu/clock/FavoriteStore;->save(Ljava/util/List;)V

    .line 45
    return-object v1
.end method

.method public final all()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSite;",
            ">;"
        }
    .end annotation

    .line 12
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/secaccu/clock/FavoriteStore;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "sites"

    const-string v3, "[]"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    move-object v2, v3

    .line 13
    .local v2, "raw":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/secaccu/clock/FavoriteStore;

    .line 79
    .local v0, "$this$all_u24lambda_u240":Lcom/secaccu/clock/FavoriteStore;
    const/4 v3, 0x0

    .line 13
    .local v3, "$i$a$-runCatching-FavoriteStore$all$array$1":I
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$all_u24lambda_u240":Lcom/secaccu/clock/FavoriteStore;
    .end local v3    # "$i$a$-runCatching-FavoriteStore$all$array$1":I
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    .line 14
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .local v3, "sites":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_7

    .line 16
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_2

    move-object/from16 v18, v0

    goto/16 :goto_4

    .line 17
    .local v6, "obj":Lorg/json/JSONObject;
    :cond_2
    const-string v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "optString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 18
    .local v7, "url":Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 19
    .local v8, "name":Ljava/lang/String;
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_6

    .line 20
    move-object v15, v3

    check-cast v15, Ljava/util/Collection;

    .line 21
    const-string v9, "id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 79
    const/4 v9, 0x0

    .line 21
    .local v9, "$i$a$-ifBlank-FavoriteStore$all$1":I
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fav-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v9    # "$i$a$-ifBlank-FavoriteStore$all$1":I
    :cond_4
    const-string v10, "ifBlank(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 22
    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 79
    const/4 v9, 0x0

    .line 22
    .local v9, "$i$a$-ifBlank-FavoriteStore$all$2":I
    sget-object v11, Lcom/secaccu/clock/FavoriteStore;->Companion:Lcom/secaccu/clock/FavoriteStore$Companion;

    invoke-virtual {v11, v7}, Lcom/secaccu/clock/FavoriteStore$Companion;->hostLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "$i$a$-ifBlank-FavoriteStore$all$2":I
    :cond_5
    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .line 23
    nop

    .line 24
    sget-object v9, Lcom/secaccu/clock/Sites;->INSTANCE:Lcom/secaccu/clock/Sites;

    invoke-virtual {v9, v7}, Lcom/secaccu/clock/Sites;->kindFor(Ljava/lang/String;)Lcom/secaccu/clock/SyncKind;

    move-result-object v13

    .line 25
    nop

    .line 26
    nop

    .line 20
    new-instance v14, Lcom/secaccu/clock/TimeSite;

    const-string v16, "\uc990\uaca8\ucc3e\uae30"

    const/16 v17, 0x1

    move-object v9, v14

    move-object v12, v7

    move-object/from16 v18, v0

    move-object v0, v14

    .end local v0    # "array":Lorg/json/JSONArray;
    .local v18, "array":Lorg/json/JSONArray;
    move-object/from16 v14, v16

    move-object v1, v15

    move/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Lcom/secaccu/clock/TimeSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/secaccu/clock/SyncKind;Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 19
    .end local v18    # "array":Lorg/json/JSONArray;
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_6
    move-object/from16 v18, v0

    .line 15
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .restart local v18    # "array":Lorg/json/JSONArray;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    goto/16 :goto_2

    .end local v18    # "array":Lorg/json/JSONArray;
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_7
    move-object/from16 v18, v0

    .line 29
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .restart local v18    # "array":Lorg/json/JSONArray;
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/secaccu/clock/FavoriteStore;->all()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 82
    .local v1, "$i$f$filterNot":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 83
    .local v4, "$i$f$filterNotTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/secaccu/clock/TimeSite;

    .local v7, "it":Lcom/secaccu/clock/TimeSite;
    const/4 v8, 0x0

    .line 49
    .local v8, "$i$a$-filterNot-FavoriteStore$remove$1":I
    invoke-virtual {v7}, Lcom/secaccu/clock/TimeSite;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 83
    .end local v7    # "it":Lcom/secaccu/clock/TimeSite;
    .end local v8    # "$i$a$-filterNot-FavoriteStore$remove$1":I
    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterNotTo":I
    check-cast v2, Ljava/util/List;

    .line 82
    nop

    .line 49
    .end local v0    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterNot":I
    invoke-direct {p0, v2}, Lcom/secaccu/clock/FavoriteStore;->save(Ljava/util/List;)V

    .line 50
    return-void
.end method
