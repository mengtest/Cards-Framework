UILogin = { }

function UILogin.Awake()
    print("UILogin.Awake");
end

function UILogin.Start()
    print("UILogin.Start");
end

function UILogin.OnEnable()
    print("UILogin.OnEnable");
end

function UILogin.OnDisable()
    print("UILogin.OnDisable")
end

function UILogin.Update()
    GlobalEventManager.Notify(2)
end

function UILogin.LateUpdate()
end

function UILogin.OnDestroy()
    print("UILogin.OnDestroy");
end

